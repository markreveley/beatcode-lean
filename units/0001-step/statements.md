---
unit: 0001
title: step
rung: 1 — a coined term on top of the trusted base
label: proved (the two decision theorems carry no axioms; the definition itself is a term, not a claim)
notation: socrates loadout v0 (markreveley/socrates @ 6997c8e119e7fa7be469b0792a633ad01152004f), rendered by hand; ⊢ marks ratified
---

# unit 0001 · step — statements

⊢ [def_1] *step*: a whole number, counting from zero, naming a position in a sequence
  {author: operator · entered ratified (authorship is assent) · source: threads/2026-09-27-ratification-of-step.md}

  [ref_1] origin: file `units/0001-step/Step.lean` · sha256 b19edd4e93d64b6bc79c45b7774ac5802c50ebd094752882e2b3e02bb208eab4
  {author: model · proposed}

  [attest_1](def_1, ref_1) the Lean declaration `Step` in ref_1 denotes exactly *step*(def_1)
  {author: model · proposed · THIS IS THE PENDING OPERATOR ACT: only a human can judge that the name means what the sentence says}

  [attest_2](def_1) *step*(def_1) begins at zero: the first position is step 0, not step 1
  {author: model · proposed · confirmed by the operator in the thread ("2 - correct"); formal twin: theorem `step_first`}

  [attest_3](def_1) *step*(def_1) has no upper bound; the reference implementation (beatcode v0.1) caps steps at 64 bits, and this is the first deliberate divergence from it
  {author: model · proposed · confirmed by the operator in the thread; formal twin: theorem `step_succ`}

  [did_1](ref_1) the Lean 4.34.1 kernel (commit 5045d005) accepted `Step.lean` at sha256 b19edd4e… on 2026-09-27; `step_first` and `step_succ` depend on no axioms
  {author: model · record · evidence: runs/2026-09-27-unit-0001-kernel-check.md}

## What each checker settled

| checker | settled | not settled |
|---|---|---|
| gate (form) | every dep resolves; the one term used, *step*, has a def in scope; ref_1 carries a measured hash | whether anything is true |
| kernel (truth of the formal twin) | `Step.lean` is well-formed; `step_first` and `step_succ` hold with no axioms | whether `Step` means *step* |
| operator (meaning) | def_1 — by authoring it | attest_1, attest_2, attest_3 — pending the act over a named commit |
