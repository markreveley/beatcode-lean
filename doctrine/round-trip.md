# One round trip

How discussion becomes a proposed specification and, after checks, an
accepted unit. The current unit 0001 draft illustrates the starting
point; it has not completed this path. Terms are defined in
[README.md](../README.md), and the rules are in [matters.md](matters.md)
and [statements.md](statements.md). This walkthrough is commentary.

## The cast

- **The operator** develops the proposal in discussion, rules on
  findings, and writes the independent account that can ratify it.
- **An agent** drafts statements and formal twins, runs checks and
  records evidence. Authorship confers no authority to ratify.
- **A fresh reader** took no part in authoring the matter and receives
  only the material for the assigned lens, without the author's context
  or other readers' reports.
- **The checker** checks the Lean declarations. Acceptance establishes
  what the declarations express, not their correspondence to the prose.
- **The gate** checks the statement structure. No gate program exists
  yet; an agent must perform those checks and identify that limitation.

## Discussion and the first two layers

There is no separately authoritative initial natural-language sentence.
The thread preserves the discussion, including alternatives, decisions
and the origin of wording. Only the commitments adopted into the
proposal are offered for acceptance. Operator instructions in discussion
still direct the work; agreeing to draft something does not ratify it.

**L1 is the typed prose.** In
[unit 0001](../units/0001-sample-frame/statements.md), the discussion has
produced one proposed definition:

> A sample frame is one discrete update of the signal-processing system.

Its id is `def_1`. The agent proposed the wording and the operator agreed
to it; authorship and adoption are recorded separately. Neither that
agreement nor this commit makes the definition ratified. The
[thread](../threads/2026-09-28-book-grounding-and-layers.md) is its
provenance. The [matter](../matters/m0001-unit-0001-sample-frame.md)
records the current scope and pins the unit file by hash.

**L2 is the formal representation.** It is unresolved for this draft.
The next discussion proposes and examines a Lean representation of the
definition. L1 and L2 may be developed together; a representation can
reveal an ambiguity that the sentence must resolve before an attempt.
That does not call for additional mathematical claims merely to obtain
proofs.

A defining declaration supplies meaning, structure or computation. Its
body is part of what the operator reads: for `def` or `abbrev`, the text
after `:=` is the definition, not a proof to omit. For a structure or
inductive type, the fields or constructors matter. A theorem instead
states a proposition and supplies a proof. The operator sees its full
parameters, hypotheses, proposition, reading and assumption list; the
proof remains available in the source and is checked by Lean.

The choice follows the commitment being expressed. Merely attaching a
true theorem about numbers to the sample-frame sentence would not
establish their correspondence. A name or dependency link does not fill
that gap. The eventual candidate needs a correspondence reading and an
explicit connecting assertion; neither is claimed for this draft.

The book supplies conceptual grounding under [fidelity.md](fidelity.md).
It adds no hidden requirements. Runtime or bitwise parity is not a
requirement of the current definition.

## One attempt, at one fixed proposal

After the required statements and formal twins are ready, fix the
proposal, source hashes and doctrine version. Every attempt begins at
S1, records the inputs, actors, evidence and findings in
`runs/mNNNN-attempt-K.md`, and stops at its first failure. A failed log
is retained; correcting the proposal or account starts a new attempt.

**S1 — gate.** Apply C1–C7 from statements.md: valid unique ids,
resolving dependencies, defined terms, matching source hashes, a passing
ratification act for any statement already marked ratified, the stated
quantifier check for theorem twins, and flags for trivial proofs needing
correspondence review. These are structural checks, not a proof of prose
meaning. Record whether a program or an agent performed them.

**S2 — checker.** Run the Lean files and inspect their printed
assumption lists under the declared evidence level. The wrapper stops
on the first Lean failure; the axiom policy is still checked by reading.
A unit missing its required formal representation cannot pass merely
because there is no Lean file. The current unit is therefore not ready
for an attempt, and no checker result is claimed for it.

**S3 — lenses.** Each fresh reader receives one question:

- Q1: does the matter accurately describe its sources and how L1
  expresses the settled discussion?
- Q2: is anything undefined?
- Q3: is the blast radius as stated?
- Q4: does each twin say what its sentence says?

For Q4, first provide only the complete relevant formal declarations
and needed formal context, with sentence-revealing comments removed.
Record that exact input and the reading before revealing the prose.
Then provide L1 and record each pair's verdict and exclusion test: a
wrong definition excluded by the sentence, and whether the twin also
rejects it, with checker evidence where applicable. Agreement requires
matching meaning, not just the absence of contradiction. Any unresolved
finding fails S3.

## L3: the acceptance record

**S4 — restatement.** Only after S1–S3 pass, the operator reads the fixed
proposal at a named commit, its formal readings and correspondence
records, with discussion provenance available. They write and commit
their own account under the matter's `## Restatement`: what the proposal
means, what each formal twin establishes, its limits, and what they
accept. This is L3. It is an independent account, not independent
discovery; its audit examines expressed understanding, not private
cognition. This walkthrough supplies no candidate account for the
operator to copy.

**S5 — audit.** A fresh agent applies the exact C1–C8 questions in
[matters.md](matters.md), under Restatement audit. The questions cover
version, commitment coverage, formal meaning, evidence calibration,
correspondence, continuity from discussion, independent authorship, and
acceptance without added scope. For each criterion the log records exact
L3 passages, compared statements or sections, evidence locations and the
reason for the verdict. Complete mappings run both from commitments to
L3 and from L3 claims back to the fixed proposal. The log also traces
settled discussion through L1 and L2 into L3.

The verifier stops at the first failure. Every criterion must pass;
there is no averaged score or substitute general assurance. A failed
audit closes the attempt. Extra scope must be removed from a later
restatement or pursued as a new matter. It cannot be added to L1 or L2
within this ratification cycle. A corrected account of the existing
proposal starts a new attempt at S1, never a continuation at S4.

On a pass, the recording agent records the verification and ratification
pins as the result of the operator's act. The matter can then land under
the repository's execution rules. A failed attempt does not itself move
the matter to `rejected`; that is the operator's decision.

## Where this draft stops

Only the proposed L1 definition exists. L2, its reading and connecting
assertion remain to be discussed; L3 has not been reached. Earlier step
attempts remain unchanged in `runs/` and supply no passes for sample
frame. The next attempt here would be number 9, beginning at S1. A fresh
repository must run its own checks from the beginning.
