# run · 2026-09-27 · unit 0001 kernel check

Claim tested: `units/0001-step/Step.lean` is accepted by the Lean kernel
and its two theorems depend on no axioms (supports m0001, did_1).

Environment: Linux 6.18.44-fc-v37 x86_64, 4 cores; Lean 4.34.1
(x86_64-unknown-linux-gnu, commit 5045d0056413266e57c625dcd7c365b10e377c52,
release tarball from releases.lean-lang.org); no Mathlib, no lake, no network.

Command: `LEAN_BIN=<toolchain>/bin ./check.sh`

Observed:

```
Lean (version 4.34.1, x86_64-unknown-linux-gnu, commit 5045d0056413266e57c625dcd7c365b10e377c52, Release)
units/0001-step/Step.lean  exit=0  16.2s
    'step_first' does not depend on any axioms
    'step_succ' does not depend on any axioms
    sha256 b19edd4e93d64b6bc79c45b7774ac5802c50ebd094752882e2b3e02bb208eab4
```

Expected: exit 0; both `#print axioms` lines report no axioms; the file
hash matches ref_1 in `units/0001-step/statements.md`.

Verdict: pass. Actor: claude-code/2026-09-27. This file is append-only; a
re-check is a new file.
