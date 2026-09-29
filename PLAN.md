# Plan

A plan governs nothing; these are candidates for later discussion, not
instructions to begin work. Terms are defined in [README.md](README.md).

The current priority is the already-filed
[m0001](matters/m0001-unit-0001-sample-frame.md): one term, sample frame,
and its meaning. Its proposed L1 is committed; its formal representation
must be discussed before an attempt. No next unit or multi-unit sequence
is adopted. The earlier step-based sequence remains in Git at
`431709fcccaa12f2379f331cacbef8b4c07634be`; it is not the active roadmap.

The direction recorded in [HANDOFF.md](HANDOFF.md) is to formalize the
reference's model of computation. The unit candidates below follow the
order of the book's Chapter 1 and the ladder's rungs; they are
expectations to examine, not adopted units, and each would be filed as
its own matter. The arithmetic and library rules they assume are doctrine
(README.md, Arithmetic and Library), not plan.

## Unit candidates, in the reference's order

| # | subject | what | expected level | new obligation | operator decision | depends on |
|---|---|---|---|---|---|---|
| 1a | unit | signal: one number per sample frame, with the rule that every operator and the whole patch update once per frame | 4 | the first twin judged against its sentence (R2) | the representation of a stream | 0001 |
| 1b | unit | history: the input value is the output one sample frame later, from a stated initial value | 4 | memory across frames, the only path a value takes between them; feedback becomes possible (R2) | the initial-value convention | 1a |
| 1c | unit | wrap, fold and clip: the output always lies within the stated bounds | 4 once the float model defines floor; 3 until then | the first rule with always (R3) | wait for the model or build floor from modeled operations | 1a |
| 1d | unit | phasor: a ramp from 0 toward 1 that advances by frequency over sample rate and always stays in range | 4, with 1c's caveat | always, over every frame, with state (R3) | the phase representation | 1b, 1c |
| 1e | unit | delay and accum: a delay of n frames equals n histories; accum of a constant one equals elapsed | 4 | two computations proved equal (R4) | none | 1b |
| 1f | unit | cycle and mtof: a sine table read by interpolation; MIDI note number to frequency | 4 for bit-exact determinism; 3 for closeness to the sine and to 2^(n/12) | the first inexact quantity, built without the platform math library (R5) | the error measure and bound | 1d |

## Process candidates

The process candidates below remain unfiled. Their target levels are
expectations to examine, not earned evidence or a reason to expand the
first unit. The ids retain their existing meanings for doctrine links.

| # | subject | what | expected level | new obligation | operator decision | depends on |
|---|---|---|---|---|---|---|
| 0a | process | the gate: a Lean program performing the seven checks of doctrine/statements.md over every unit, and checking that a matter's list of statements agrees with its unit file, in CI | 4 | structural statement checks run by machine; the gate is itself a unit | scope before filing | — |
| 0b | process | CI rules: enforce assumption policy, ratification hashes, ratified normative dependencies, and presence of required readings and audit records | — | machine-checkable evidence requirements are enforced; semantic verdicts still need readers | scope before filing | — |
| 0c | process | the journal: an append-only record of every statement event, from which the unit files are derived | 4 | one source of truth for state | whether markdown stays authoritative until then | 0a |
| 0d | process | intake: synthesize typed prose from discussion with provenance under a fixed schema; the gate checks structure | 1 | drafting records its decisions without an additional authoritative initial sentence | boundaries and repair rounds before a failure is reported | 0a |
| 0e | process | verify and the rejection-rate eval: re-hash sources with no network; compute rejection rate and time-to-ratify from the journal | 4 | process measurements are reproducible | the reporting threshold | 0c |
| 0f | process | the assembly: a patch as data; the gate extended to check that it is loop-free except through history and that every operator is a ratified unit or abstraction | 4 | an assembly inherits the framework's proofs; what it does not inherit is proved per abstraction | scope before filing | 0a, 1b |
| 0g | process | instruction evals: over many operator instructions to an agent, the share of assemblies that pass the gate and the share the operator rejects, computed from the journal | — | measures the agent and the operator, not the software (README.md, Eval) | the reporting threshold | 0c, 0f |
