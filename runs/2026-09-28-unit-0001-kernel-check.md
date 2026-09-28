# run · 2026-09-28 · unit 0001 kernel check (bootstrap revision 2)

Claim tested: `units/0001-step/Step.lean` as revised in bootstrap revision
2 (comment text only; declarations unchanged) is accepted by the checker and
its two claims rely on no assumptions (supports m0001, did_1). Supersedes
the 2026-09-27 run for the current file hash; the earlier run stands as the
record of the earlier hash.

Environment: Linux x86_64, 4 cores; Lean 4.34.1 (commit
5045d0056413266e57c625dcd7c365b10e377c52); no other dependencies, no network.

Command: `LEAN_BIN=<toolchain>/bin ./check.sh`

Observed:

```
Lean (version 4.34.1, x86_64-unknown-linux-gnu, commit 5045d0056413266e57c625dcd7c365b10e377c52, Release)
units/0001-step/Step.lean  exit=0  17.4s
    'step_first' does not depend on any axioms
    'step_succ' does not depend on any axioms
    sha256 874763ffa2fa57201981e79400a5e20e2991f7c1bb59af2a15d866381a4adce7
```

Expected: exit 0; both assumption lists empty; hash equals ref_1 in
`units/0001-step/statements.md`.

Verdict: pass. Actor: claude-code/2026-09-28. Append-only.
