# Plan

A plan governs nothing; these are candidates for later discussion, not
instructions to begin work. Terms are defined in [README.md](README.md).

The current priority is the already-filed
[m0001](matters/m0001-unit-0001-sample-frame.md): one term, sample frame,
and its meaning. Its proposed L1 is committed; its formal representation
must be discussed before an attempt. No next unit or multi-unit sequence
is adopted. The earlier step-based sequence remains in Git at
`431709fcccaa12f2379f331cacbef8b4c07634be`; it is not the active roadmap.
The supplied book chapter grounds the present discussion without
requiring future components.

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
