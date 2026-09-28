# Roadmap

Units in ladder order. Each row names the new obligation the unit
introduces and the decision the operator must make. A unit is not started
until every unit it depends on is `executed`. Rows numbered 0 are process,
not units. Terms are defined in [README.md](README.md).

| # | unit | ladder rung | new obligation | operator decision | depends on |
|---|---|---|---|---|---|
| 0a | a gate program that performs the five checks in doctrine/statements.md over every unit, run in CI | process | the statement checks run by machine instead of by reading | none | — |
| 0b | a CI rule that a unit labelled *proved* prints only the three standard assumptions for every claim, and that a ratified matter's hash matches its text | process | labels are enforced, not declared | none | — |
| 0002 | *period*: a whole number of steps, at least 1 | 1 | a second term, and a constraint ("at least 1") that is a claim rather than a type | whether a period of 0 is excluded (recommended) or given a meaning | 0001 |
| 0003 | *pulses*: step i pulses under period n when i divided by n leaves no remainder; rule: one period later, the answer is the same, for every step and every period | 3 | the first rule with "always"; the checker's first real job | none | 0002 |
| 0004 | *pulse count*: how many pulses have occurred by step i; rule: it rises by exactly one every n steps | 3 | a second rule on the same terms | whether step 0's pulse is counted | 0003 |
| 0005 | a running counter: a sequencer state that increments once per step; rule: it produces the same pulses as the plain index | 4 | the first proof that two definitions agree; the first point at which code becomes replaceable without re-reading | none | 0003 |
| 0006 | *pattern*: a non-empty list of hits and rests that repeats; step i hits when the entry at position (i divided by the length, remainder) is a hit | 3 | lists; the sequencer's central idea (patterns of different lengths drift against each other) | whether the pattern length is the period of 0002 | 0003 |
| 0007 | *beat*: an exact fraction of a whole note; step i sits at (clock × i) beats | 3 | exact fractions | unbounded fractions (recommended) or a fixed width | 0001 |
| 0008 | *period in seconds*: 60 divided by the tempo | 5 | the first quantity that is not exact; the first unit that lands on label 2 unless tempo is kept as an exact fraction | exact fractions for time (recommended) or binary floating point | 0007 |

After 0008: the event list for a score with no timing adjustments; then
swing and humanize; then the renderer, which is expected to land on label 3
(checked against examples), with its structure on label 1.
