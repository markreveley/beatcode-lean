# run · 2026-09-28 · checker wrapper stops at the first failure

Claim tested: `check.sh` prints Lean's diagnostics, returns a failure code
when Lean rejects a file, and does not check later files after that failure.
Successful files still produce their reports and an all-success run exits 0.
This tests wrapper control flow with temporary fixtures; it is not a new
attempt on m0001 and does not change any unit's evidence or state.

Actor: Codex/2026-09-28, following the operator's instruction to fix the
wrapper in threads/2026-09-28-checker-failure-discussion.md.

Inputs: the original script from HEAD `76c7b72` and the corrected working
copy; both sha256 values are in the output. Each test copies the script
and the repository's lean-toolchain into a temporary directory. Three
Lean files are created there. A valid fixture proves True; an invalid
fixture assigns a string to Nat. The real installed Lean 4.34.1 is used.
The temporary directories are removed when the harness exits.

Expected results:

| case | script exit | files checked |
|---|---|---|
| original, first file invalid (defect reproduction) | 0 | all three |
| corrected, all valid | 0 | all three |
| corrected, first file invalid | 1 | first only |
| corrected, second file invalid | 1 | first and second only |

The original case's PASS means the known defect was reproduced, not that
its behavior was correct. Every failure case must retain Lean's type-error
diagnostic. The harness asserts these expectations.

Harness, verbatim (saved for this run as
`/private/tmp/beatcode-check-failure-test.py`; HEAD in this harness was
`76c7b72`):

```python
import hashlib
import os
from pathlib import Path
import platform
import re
import shutil
import subprocess
import sys
import tempfile

repo = Path(sys.argv[1]).resolve()
lean = shutil.which("lean")
assert lean is not None, "Lean must already be installed"
original = subprocess.check_output(["git", "show", "HEAD:check.sh"], cwd=repo)
fixed = (repo / "check.sh").read_bytes()
print("Environment:", platform.platform())
print(subprocess.check_output([lean, "--version"], cwd=repo, text=True).strip())
print("Original check.sh sha256:", hashlib.sha256(original).hexdigest())
print("Fixed check.sh sha256:", hashlib.sha256(fixed).hexdigest())
files = [f"units/{i:04d}-case/Case.lean" for i in range(1, 4)]
valid = "theorem smoke : True := True.intro\n#print axioms smoke\n"
invalid = 'def invalid : Nat := "invalid"\n'
cases = [
    ("original-first-failure", original, 1, 0, 3),
    ("fixed-all-success", fixed, None, 0, 3),
    ("fixed-first-failure", fixed, 1, 1, 1),
    ("fixed-middle-failure", fixed, 2, 1, 2),
]
with tempfile.TemporaryDirectory(prefix="beatcode-check-", dir="/private/tmp") as tmp:
    for name, script, failing, expected_exit, expected_count in cases:
        root = Path(tmp) / name
        root.mkdir()
        (root / "check.sh").write_bytes(script)
        shutil.copyfile(repo / "lean-toolchain", root / "lean-toolchain")
        for i, relative in enumerate(files, start=1):
            path = root / relative
            path.parent.mkdir(parents=True)
            path.write_text(invalid if i == failing else valid)
        env = dict(os.environ, LEAN_BIN=str(Path(lean).parent))
        result = subprocess.run(
            ["bash", "check.sh"], cwd=root, env=env,
            capture_output=True, text=True, timeout=60,
        )
        checked = re.findall(r"^(units/\S+)  exit=", result.stdout, re.MULTILINE)
        print(f"\nCASE: {name}")
        print("Command: LEAN_BIN=" + env["LEAN_BIN"] + " bash check.sh")
        print("stdout:")
        print(result.stdout, end="")
        print("stderr:", result.stderr or "(empty)", end="\n" if not result.stderr else "")
        print("Script exit:", result.returncode)
        print("Files checked:", ", ".join(checked))
        assert result.returncode == expected_exit, (name, result.returncode)
        assert checked == files[:expected_count], (name, checked)
        assert not result.stderr, (name, result.stderr)
        if failing is not None:
            assert "Type mismatch" in result.stdout, (name, result.stdout)
        print("PASS")
print("\nAll four cases passed. Temporary fixtures removed.")
```

Command:

```sh
python3 /private/tmp/beatcode-check-failure-test.py /Users/mark/dev/repos/beatcode-lean > /private/tmp/beatcode-check-failure-test.out
cat /private/tmp/beatcode-check-failure-test.out
```

Observed output, verbatim:

```text
Environment: macOS-15.4.1-arm64-arm-64bit-Mach-O
Lean (version 4.34.1, arm64-apple-darwin24.6.0, commit 5045d0056413266e57c625dcd7c365b10e377c52, Release)
Original check.sh sha256: e1e12952bb06e4980d664edfdcabd93784b36980baa8395ed35aee0685b856cd
Fixed check.sh sha256: fb05b441ef21b02010ca0f461afc2d39d36e3a4e0f4170f96696799a81e52c07

CASE: original-first-failure
Command: LEAN_BIN=/opt/homebrew/bin bash check.sh
stdout:
Lean (version 4.34.1, arm64-apple-darwin24.6.0, commit 5045d0056413266e57c625dcd7c365b10e377c52, Release)
units/0001-case/Case.lean  exit=1  2.2s
    units/0001-case/Case.lean:1:21: error: Type mismatch
      "invalid"
    has type
      String
    but is expected to have type
      Nat
    sha256 805063e19c5538760d069ed2d5697a608a1f623a7cebfd4e244a640dcd3d5f19
units/0002-case/Case.lean  exit=0  0.2s
    'smoke' does not depend on any axioms
    sha256 ed0a0d1e365b1468a537847b598fe1396140dc77377c357017239279bfc9f54b
units/0003-case/Case.lean  exit=0  0.2s
    'smoke' does not depend on any axioms
    sha256 ed0a0d1e365b1468a537847b598fe1396140dc77377c357017239279bfc9f54b
stderr: (empty)
Script exit: 0
Files checked: units/0001-case/Case.lean, units/0002-case/Case.lean, units/0003-case/Case.lean
PASS

CASE: fixed-all-success
Command: LEAN_BIN=/opt/homebrew/bin bash check.sh
stdout:
Lean (version 4.34.1, arm64-apple-darwin24.6.0, commit 5045d0056413266e57c625dcd7c365b10e377c52, Release)
units/0001-case/Case.lean  exit=0  0.2s
    'smoke' does not depend on any axioms
    sha256 ed0a0d1e365b1468a537847b598fe1396140dc77377c357017239279bfc9f54b
units/0002-case/Case.lean  exit=0  0.2s
    'smoke' does not depend on any axioms
    sha256 ed0a0d1e365b1468a537847b598fe1396140dc77377c357017239279bfc9f54b
units/0003-case/Case.lean  exit=0  0.2s
    'smoke' does not depend on any axioms
    sha256 ed0a0d1e365b1468a537847b598fe1396140dc77377c357017239279bfc9f54b
stderr: (empty)
Script exit: 0
Files checked: units/0001-case/Case.lean, units/0002-case/Case.lean, units/0003-case/Case.lean
PASS

CASE: fixed-first-failure
Command: LEAN_BIN=/opt/homebrew/bin bash check.sh
stdout:
Lean (version 4.34.1, arm64-apple-darwin24.6.0, commit 5045d0056413266e57c625dcd7c365b10e377c52, Release)
units/0001-case/Case.lean  exit=1  0.2s
    units/0001-case/Case.lean:1:21: error: Type mismatch
      "invalid"
    has type
      String
    but is expected to have type
      Nat
    sha256 805063e19c5538760d069ed2d5697a608a1f623a7cebfd4e244a640dcd3d5f19
stderr: (empty)
Script exit: 1
Files checked: units/0001-case/Case.lean
PASS

CASE: fixed-middle-failure
Command: LEAN_BIN=/opt/homebrew/bin bash check.sh
stdout:
Lean (version 4.34.1, arm64-apple-darwin24.6.0, commit 5045d0056413266e57c625dcd7c365b10e377c52, Release)
units/0001-case/Case.lean  exit=0  0.3s
    'smoke' does not depend on any axioms
    sha256 ed0a0d1e365b1468a537847b598fe1396140dc77377c357017239279bfc9f54b
units/0002-case/Case.lean  exit=1  0.3s
    units/0002-case/Case.lean:1:21: error: Type mismatch
      "invalid"
    has type
      String
    but is expected to have type
      Nat
    sha256 805063e19c5538760d069ed2d5697a608a1f623a7cebfd4e244a640dcd3d5f19
stderr: (empty)
Script exit: 1
Files checked: units/0001-case/Case.lean, units/0002-case/Case.lean
PASS

All four cases passed. Temporary fixtures removed.

```

Verdict: pass. All four cases met their expected outcomes. The corrected
wrapper stopped on the first rejected file and returned Lean's exit code
1 in both failure positions. No later file was checked. This run does not
exercise timeout handling, other failure codes, or axiom-list enforcement.
Never edited.
