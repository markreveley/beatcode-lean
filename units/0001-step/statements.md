---
unit: 0001
title: step
rung: 1 — a coined term resting only on standard mathematics
level: 4 (proved) — the two claims about the term carry no assumptions at all; the definition itself is a term, not a claim
checks: performed by reading (no gate program exists yet; see doctrine/statements.md)
---

# unit 0001 · step — statements

Notation: doctrine/statements.md. ⊢ marks ratified.

⊢ [def_1] *step*: a whole number, counting from zero, naming a position in a sequence
  {author: operator · ratified on entry · source: threads/2026-09-27-ratification-of-step.md}

  [ref_1] file units/0001-step/Step.lean · sha256 874763ffa2fa57201981e79400a5e20e2991f7c1bb59af2a15d866381a4adce7
  {author: model · proposed}

  [attest_1](def_1, ref_1) the Lean declaration `Step` in ref_1 denotes exactly *step*
  {author: model · proposed · the pending operator act: only a human can judge that the name means what the sentence says}

  [attest_2](def_1) the first *step* is step 0, not step 1
  {author: model · proposed · confirmed by the operator in the thread ("2 - correct") · formal twin: theorem `step_first` in ref_1}

  [attest_3](def_1) a *step* has no upper bound: every step has a next step
  {author: model · proposed · confirmed by the operator in the thread · formal twin: theorem `step_succ` in ref_1}

  [did_1](ref_1) on 2026-09-28 the checker (Lean 4.34.1) accepted ref_1; `step_first` and `step_succ` relied on no assumptions
  {author: model · record · evidence: runs/2026-09-28-unit-0001-kernel-check.md}

## What each check settled

| check | settled | not settled |
|---|---|---|
| reading against doctrine/statements.md | every dependency resolves; the one term used has a definition in scope; ref_1 carries a measured hash | whether anything is true |
| the checker | ref_1 is well-formed; `step_first` and `step_succ` hold with no assumptions | whether `Step` means *step* |
| the operator | def_1, by authoring it | attest_1, attest_2, attest_3 — pending the act over a named commit |
