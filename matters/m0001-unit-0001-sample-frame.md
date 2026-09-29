---
type: spec
title: "unit 0001 · sample frame — one term and its meaning"
description: "Propose one definition developed in discussion; examine its formal representation before any ratification attempt."
id: m0001
subject: unit-0001
state: proposed
tags: [unit-0001, definition]
sources:
  - path: units/0001-sample-frame/statements.md
    sha256: 3a7603b4138543a2174e2021807b192aa64a158eba9562e2ab60e1be5806db72
threads:
  - threads/2026-09-28-book-grounding-and-layers.md
runs: []
generated:
  by: Codex/2026-09-28
  at: 2026-09-28
---

# m0001 · unit 0001 · sample frame

This is a revision of the still-proposed first matter during bootstrap,
authorized in the cited thread, operator turns 5, 7 and 8. It is not a
ratification or a new attempt. Its scope is one term and its meaning.

## Proposed text

The pinned unit file contains one statement, `def_1`:

> A sample frame is one discrete update of the signal-processing system.

Codex proposed the wording; the operator agreed to it in discussion. Its
authorship remains model and its state remains proposed under the revised
rule. Discussion agreement does not perform L3 or ratify this matter.

This is L1. L2 is unresolved: no Lean definition, theorem or claim of
correspondence has been adopted. L3 is not reached. A formal declaration
must be proposed and examined before an attempt can establish the unit's
readiness for ratification. Rung and evidence level are pending.

The proposal does not include a frame index, numbering convention, fixed
sample rate, numeric representation, sequencer, or DSP operator. Those
would be additional commitments. Elementary properties of `Nat` do not
establish what a sample frame means and are not carried into this unit.

## Provenance and continuity

The cited thread records the development and adoption of this sentence:

- Operator 1 introduces the book as grounding for the project.
- Operator 2 treats the supplied chapter boundary as a useful scope limit.
- Operator 4 asks for the smallest first commitment; the following agent
  excerpt proposes the definition above.
- Operator 5 agrees to that definition and to one term and its meaning.
- Operator 7 proposes discussion as provenance, L1 as typed prose, L2 as
  Lean, and L3 as the operator's account, and agrees to revising m0001.
- Operator 8 authorizes the revision and fixes the acceptance-only scope
  of L3 and the pass-or-fail audit.

Only `def_1` is the current unit commitment. The thread records how it
was reached; neither the book nor abandoned discussion adds requirements.
During drafting, any difference between the intended meaning and a
candidate L2 is made explicit here before the proposal is fixed for S1.

## Reference fidelity

Reference: Graham Wakefield and Gregory Taylor, *Generating Sound &
Organizing Time*, Thinking with gen~ — Book 1, Chapter 1, printed page 4,
in the operator-supplied archive of pages 2–18. The page describes signals,
operators and the whole patch advancing one sample frame at a time. The
definition above is our wording, not a quotation.

Chosen relation: conceptual, under doctrine/fidelity.md. The intended
correspondence is one discrete update of the processing system. Whether
a proposed Lean declaration expresses it remains unresolved.

Inputs and observations: this is a definition-only comparison; runtime
input ranges, numerical tolerances, sample comparisons and gen~ version
matching do not apply yet. Evidence is the cited passage and discussion
adoption, not a runtime test or a proof. No behavioural or bitwise parity
is claimed. No deliberate conceptual departure has been adopted.

## What this revision replaces

The previous subject was `step`, represented by `abbrev Step := Nat`,
with two theorems about natural numbers. The operator authorized replacing
that first subject with sample frame. The earlier text and Lean source
are preserved in Git at commit
`431709fcccaa12f2379f331cacbef8b4c07634be`, under
`matters/m0001-unit-0001-step.md` and `units/0001-step/`.

The earlier definition's ratified-on-entry status was recorded under the
former authorship rule. That historical act is not rewritten or transferred
to this new definition. The former assertions, source pin and checker
record are not statements of the revised unit.

## Blast radius

Empty: no other unit or matter depends on unit 0001. Old plan entries
were unfiled proposals, not dependent units. This matter therefore takes
one fresh reader per lens when it is ready for an attempt.

## Attempts

No attempt has run on this revision. Its `runs` list is empty.

Historical attempts 1–8 remain unchanged in `runs/m0001-attempt-K.md`.
They concern the earlier step proposal: attempts 1–7 record failures;
attempt 8 is recorded as open at S4. The post-merge inspection identified
sentence-revealing comments in attempt 8's Q4 input. Those records and
their limitation remain history, not passes for sample frame. See
HANDOFF.md and the previous matter at the commit above for the history.

The next attempt in this repository would be number 9, starting at S1
after the formal representation is settled. A fresh repository has its
own fresh attempt sequence; no result travels as a substitute for a run.

## Ratification (pending)

There is no operator restatement, S5 verification or ratification pin.
After L1 and L2 are settled and S1–S3 pass at one fixed version, the
operator writes L3. The verifier then applies every Restatement audit
criterion in doctrine/matters.md. A failure ends that attempt; extra scope
is removed or assigned to a new matter, never inserted during this cycle.

## Next discussion

Propose and examine a formal representation of the agreed definition.
Keep any ambiguity visible. Do not reuse the former Nat alias as a
sample-frame representation without establishing what it expresses.
