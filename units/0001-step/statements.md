---
unit: 0001
title: step
rung: 1 — a coined term resting only on standard mathematics
level: 4 (proved) — the two claims about the term carry no assumptions at all; the definition itself is a term, not a claim
checks: performed by reading, C1–C7 (no gate program exists yet; see doctrine/statements.md)
attempts: runs/m0001-attempt-1.md (fail), runs/m0001-attempt-2.md
---

# unit 0001 · step — statements

Notation: doctrine/statements.md. ⊢ marks ratified.

⊢ [def_1] *step*: a whole number, counting from zero, naming a position in a sequence
  {author: operator · ratified on entry · source: threads/2026-09-27-ratification-of-step.md}

  [ref_1] file units/0001-step/Step.lean · sha256 672c89d1266423a866752aac82ea662bd787c8eda47a2af367f822f8b026186e
  {author: model · proposed}

  [attest_1](def_1, ref_1) the Lean declaration `Step` in ref_1 denotes exactly *step*
  {author: model · proposed · the pending operator act: only a human can judge that the name means what the sentence says
   · attempt 1 finding, kept on purpose: the twin fixes the carrier (whole numbers, from zero, no bound) and states no denotation; "position in a sequence" is plain words carried by the operator's act
   · formal twin: `abbrev Step` in ref_1
   · reading: "Step is declared by `abbrev` as an abbreviation for Nat, the type of natural numbers: the name Step stands for, and unfolds to, Nat. The declaration consists of the name Step and the single identifier Nat as its body, with nothing else."
     (fresh reader, from the Lean alone; runs/2026-09-28-unit-0001-correspondence-reading.md)}

  [attest_2](def_1) the first *step* is step 0
  {author: model · proposed · confirmed by the operator in the thread ("2 - correct"; the decision "steps start at zero, not one") · revised after attempt 1: the clause "not step 1" was not stated by the twin · formal twin: theorem `step_first` in ref_1
   · reading: "For every s of type Step, zero is less than or equal to s. The zero is written as the bare numeral 0, with no explicit (0 : Step) ascription in the text."
     (fresh reader, from the Lean alone; same run)}

  [attest_3](def_1) a *step* has no upper bound: for every step there is a later step
  {author: model · proposed · confirmed by the operator in the thread (the decision "no upper bound") · revised after attempt 1: "a next step" claimed an immediate successor, which the twin does not state; def_1's "whole number" carries that · formal twin: theorem `step_succ` in ref_1
   · reading: "For every s of type Step, there exists a t of type Step such that s is less than t. In the proof term, the witness supplied for t is s + 1, justified by Nat.lt_succ_self s."
     (fresh reader, from the Lean alone; same run)}

  [did_1](ref_1) on 2026-09-28 the checker (Lean 4.34.1) accepted ref_1; `step_first` and `step_succ` relied on no assumptions
  {author: model · record · evidence: runs/2026-09-28-unit-0001-kernel-check-revision-6.md}

  [did_2](ref_1, attest_1, attest_2, attest_3) on 2026-09-28 attempt 1 of m0001 failed at step S3, lens Q4: three findings, one per assertion
  {author: model · record · evidence: runs/m0001-attempt-1.md, citing runs/2026-09-28-unit-0001-correspondence-reading.md · answered by the revision of attest_2 and attest_3 above}

## What each check settled

| check | settled | not settled |
|---|---|---|
| reading against doctrine/statements.md | every dependency resolves; the one term used has a definition in scope; ref_1 carries a measured hash; C6: attest_3 quantifies and its twin binds s; C7: no twin is proved by rfl and constructors alone | whether anything is true |
| the checker | ref_1 is well-formed; `step_first` and `step_succ` hold with no assumptions | whether `Step` means *step* |
| the fresh reader (lens Q4) | each twin's reading; its verdict against the sentence; which wrong definition each twin rejects | ratification; the reading is proposed, like everything model-authored |
| the operator | def_1, by authoring it | attest_1, attest_2, attest_3 — pending the act over a named commit |
