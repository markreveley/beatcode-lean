# Handoff

> Advisory, not normative. Verify repository state before acting; the
> matters supply scope. Nothing `proposed` governs.

## Current direction

The operator authorized this bootstrap revision after discussing book
grounding, the first definition, the three layers and ratification. The
selected session export is
[threads/2026-09-28-book-grounding-and-layers.md](threads/2026-09-28-book-grounding-and-layers.md).
It contains the operator's turns verbatim and identifies the included
agent excerpts and omissions. The latest ruling permits these agreed
changes; it does not authorize choosing the next formal representation
without discussion.

The bootstrap remains open. The earlier goal is to lock the final
bootstrap and port its final state as the initial commit of
`beatcode-lean-2`. No final-bootstrap declaration, tag choice or evidence
migration decision is recorded by this revision. The prior instruction
to discuss new work before acting still applies beyond the work now
agreed. Reading and reporting are permitted.

## What this revision changes

- Discussion is provenance. L1 is typed prose synthesized through that
  discussion; L2 is its Lean definitions and theorems; L3 is the
  operator's independent account of the final proposal, retained as an
  acceptance record. There is no additional authoritative initial
  natural-language specification.
- Every statement enters as proposed, regardless of authorship.
  Adoption of agent wording does not change its author. Discussion
  agreement and committing a proposal do not ratify it.
- The L3 audit has eight explicit questions in
  [doctrine/matters.md](doctrine/matters.md), with exact passage and
  evidence requirements, complete coverage mappings, and a record
  template. Continuity is traced from settled discussion through L1 and
  L2 into L3. This is a fixed review procedure, not a machine proof of
  prose meaning or a claim to inspect private cognition.
- L3 adds no scope. A failed audit closes its attempt. Additional scope
  is removed from a later account or pursued in a new matter; corrected
  accounts start a new attempt at S1. An audit failure is not itself an
  operator rejection of the matter.
- [doctrine/fidelity.md](doctrine/fidelity.md) separates the required
  relation to the reference from evidence strength. Conceptual,
  observable-behaviour, numerical and representation agreement are
  selected for the component's purpose, with departures and limits
  recorded. Beatcode's own determinism is a separate obligation.
- The intended runtime direction is to compile the same computational
  Lean definitions that the proofs concern for use by Rust. Compiler,
  runtime and foreign-code boundaries remain explicit trust assumptions.
  No runtime core or integration is implemented here.

The doctrine is revised in place under the bootstrap rule. This is a
process and proposal revision, not a ratification attempt or a fresh
reader's audit.

## Unit 0001 now

[m0001](matters/m0001-unit-0001-sample-frame.md) is still proposed. Its
[unit](units/0001-sample-frame/statements.md) has one proposed statement:

> A sample frame is one discrete update of the signal-processing system.

Codex proposed the wording; the operator agreed to it. The matter pins
that L1 file and traces its provenance. L2, the correspondence reading,
the connecting assertion, rung and evidence level are unresolved. L3
has not been reached. No Lean check, correspondence reading or
ratification attempt has run on this revision.

The next substantive discussion is to propose and examine the smallest
formal representation of that meaning. Do not silently substitute a
frame index or a Nat alias. Definitions are read in full, including their
bodies, fields or constructors. Theorems serve actual stated claims or
necessary proof obligations; additional claims are not introduced merely
to produce more proofs.

The external grounding is Wakefield and Taylor's *Generating Sound &
Organizing Time*, Thinking with gen~ — Book 1, Chapter 1, printed pages
2–18 in `../../books/book-generating_time`. Page 4 is the current
conceptual reference. Later chapters are outside the supplied boundary.
The repository states adopted commitments in full; the book supplies
provenance, not additional normative requirements.

## Historical evidence

The previous baseline is commit
`431709fcccaa12f2379f331cacbef8b4c07634be`. It retains the former
`matters/m0001-unit-0001-step.md`, `units/0001-step/`, the old roadmap,
and the longer handoff with the founding-session history. Replacing the
still-proposed subject does not transfer its earlier statements or
passes to sample frame.

Existing `threads/`, `runs/` and `errors/` records remain unchanged.
Attempts 1–7 record failures. Attempt 8 is recorded as open at S4; its
Q4 first input contained the prose in Lean comments. Telling the reader
to ignore that prose did not meet the requirement to obtain a reading
before exposing the sentence. Preserve the log as recorded; its pass
is not evidence of a blind reading. The doctrine now explicitly requires
removing sentence-revealing comments from the first input.

No new attempt has been made. If one is run here, its number is 9 and
it begins at S1 after the proposal is ready. The operator's earlier
intention was to run the unit from scratch in the new repository; old
passes cannot replace that run.

`check.sh` retains the earlier fix to stop on the first Lean failure.
[runs/2026-09-28-checker-stop-on-failure.md](runs/2026-09-28-checker-stop-on-failure.md)
records that wrapper test, not a new matter attempt. The wrapper has
not been run on this prose-only draft, which has no Lean file. Axiom
policy still requires inspection and no gate program exists.

## Decisions still open

- Examine the sample-frame formal representation and any ambiguity it
  reveals, then decide its appropriate rung and evidence classification.
  The old step theorem-classification questions no longer concern the
  current unit. The general ladder and runtime-test requirements remain
  to be considered where applicable; no level is claimed prematurely.
- Before final bootstrap, review any remaining founding defaults not
  explicitly resolved: readers per lens by blast radius, the bounded
  rule for terms versus plain words, placement of attempt outcomes, and
  the boundary between doctrine blocks and commentary. The current
  doctrine states the defaults; this revision is not a blanket
  ratification of all founding decisions.
- Decide whether full agent transcripts beyond the required prompts,
  reports and cited evidence are retained, and where. The existing
  records and selected session exports are not full transcripts.
- When declaring the bootstrap final, name its tag and decide which
  runs and threads travel to the new repository. No port is authorized
  by the current revision alone.

The previous suggestions for a gate, CI, journal, additional units and
jev are historical proposals, not authority to start them. Process
candidates remain in [PLAN.md](PLAN.md); the immediate work is the first
term's representation.

## Guardrails for the next agent

- Discuss new work before acting; apply the operator's current
  authorization to the work actually agreed.
- Do not ratify, supply the operator's L3 account, or write verification
  and ratification fields without the required operator act and passing
  fresh audit. A matter's author cannot act as its fresh verifier.
- Preserve existing evidence; re-runs produce new records. Record exact
  reader inputs, reports and supporting check evidence as required.
- Obtain a formal reading before showing its reader L1. A reader cannot
  read a twin it wrote as a fresh correspondence check.
- Do not claim a check catches a case without running it on that case
  (errors/e0001). Do not contradict a stated rule without identifying
  the conflict for resolution (errors/e0003).
- Verify edits before committing; do not combine a fallible edit and
  a commit in one shell command (errors/e0002).
- Start no dependent unit before its dependencies are executed, and
  raise no evidence level without the evidence it requires.
- External material may ground discussion under the fidelity doctrine;
  adopted rules and behaviour remain specified in this repository.
