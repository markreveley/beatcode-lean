# run · 2026-09-28 · unit 0001 kernel check (bootstrap revision 6)

Claim tested: `units/0001-step/Step.lean` as revised in bootstrap revision
6 (`step_first` and `step_succ` restated so that each binds a step and
says what its sentence says; `Step` unchanged) is accepted by the checker
and its two claims rely on no assumptions (supports m0001, did_1).
Supersedes the earlier 2026-09-28 run for the current file hash; the
earlier runs stand as the records of the earlier hashes.

Environment: Linux 6.18.44-fc-v42 x86_64, 4 cores; Lean 4.34.1 (commit
5045d0056413266e57c625dcd7c365b10e377c52, release zip from the Lean
project's GitHub releases, fetched once before the check); the check
itself uses no other dependency and no network.

Command: `LEAN_BIN=<toolchain>/bin ./check.sh`

Observed:

```
Lean (version 4.34.1, x86_64-unknown-linux-gnu, commit 5045d0056413266e57c625dcd7c365b10e377c52, Release)
units/0001-step/Step.lean  exit=0  17.5s
    'step_first' does not depend on any axioms
    'step_succ' does not depend on any axioms
    sha256 672c89d1266423a866752aac82ea662bd787c8eda47a2af367f822f8b026186e
```

Expected: exit 0; both assumption lists empty; hash equals ref_1 in
`units/0001-step/statements.md`.

Verdict: pass. Actor: claude-code/2026-09-28, the session that proposed the
revised twins; this run checks the file, not the correspondence, which is
a separate reading by a fresh reader. Append-only.
