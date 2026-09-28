# m0001 · attempt 1 · 2026-09-28 · fail at S3 (Q4)

Files read, by sha256, as they stood when the readings were made (bootstrap
revision 6, part 1):

- units/0001-step/Step.lean 672c89d1266423a866752aac82ea662bd787c8eda47a2af367f822f8b026186e
- units/0001-step/statements.md, with attest_2 reading "the first *step* is
  step 0, not step 1" and attest_3 reading "a *step* has no upper bound:
  every step has a next step" (the file's hash at that state is not
  recorded; the sentences are quoted in the evidence file below)

Note: this attempt was run before the attempt structure existed
(doctrine/matters.md, Attempt; introduced in bootstrap revision 7) and is
logged in that shape afterwards from the records it cites. Only Q4 was
read under S3.

| step | actor | status | evidence |
|---|---|---|---|
| S1 gate C1–C7 | claude-code/2026-09-28, by reading | pass | units/0001-step/statements.md, "What each check settled" |
| S2 checker | check.sh, Lean 4.34.1 | pass | runs/2026-09-28-unit-0001-kernel-check-revision-6.md |
| S3 Q1 | — | not run | — |
| S3 Q2 | — | not run | — |
| S3 Q3 | — | not run | — |
| S3 Q4 | fresh reader (language-model agent, no session context) | fail, 3 findings | runs/2026-09-28-unit-0001-correspondence-reading.md |
| S4 restatement | operator | not reached | — |
| S5 verification | — | not reached | — |

Grade: fail.

## Findings

- F1 · S3 · Q4 · attest_1 / `Step`: the sentence asserts that the name
  denotes *step*; the Lean states only that Step abbreviates Nat, and no
  Lean text can state "naming a position in a sequence". The twin fixes the
  carrier (whole numbers, from zero, no bound) and cannot distinguish a
  position from a count. Evidence: the reading's pair 1.
- F2 · S3 · Q4 · attest_2 / `step_first`: the twin states that 0 is at or
  below every step; the sentence's clause "not step 1" is not stated.
  Evidence: the reading's pair 2 (the twin does reject counting from one,
  and the integers).
- F3 · S3 · Q4 · attest_3 / `step_succ`: the twin states that for every
  step some later step exists; the sentence's "a next step" claims an
  immediate successor, which is not stated. Evidence: the reading's pair 3
  (the twin does reject a type capped at 255).

## Prompts given to the reader

Recorded verbatim in runs/2026-09-28-unit-0001-correspondence-reading.md
only in summary (the procedure); the prompt texts were not recorded, which
Attempt I2 now requires. This is the gap that rule closes.

## Revision that answers the findings

attest_2 reworded to "the first *step* is step 0". attest_3 reworded to "a
*step* has no upper bound: for every step there is a later step". attest_1
kept; F1 is recorded in its note as what the operator's act carries. Lean
file unchanged. Attempt 2 follows.

Recorded by claude-code/2026-09-28. Never edited.
