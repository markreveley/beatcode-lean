# Plan

The matters not yet filed, in ladder order. A plan governs nothing; each
row becomes a matter when filed. Rows numbered 0 have the doctrine or the
process as subject; the rest have a unit. "Level" is the level the unit is
expected to reach. Terms are defined in [README.md](README.md).

| # | subject | what | level | new obligation | operator decision | depends on |
|---|---|---|---|---|---|---|
| 0a | process | the gate: a Lean program performing the seven checks of doctrine/statements.md over every unit, in CI | 4 | statement checks run by machine; the gate is itself a unit | none | — |
| 0b | process | CI rules: a level-4 unit prints only the three standard assumptions; a ratified matter's hash matches its text; every declared source is ratified; every twin has a correspondence reading | — | levels and sources are enforced, not declared | none | — |
| 0c | process | the journal: an append-only record of every statement event, from which the unit files are derived | 4 | one source of truth for state | whether markdown stays authoritative until then | 0a |
| 0d | process | intake: an agent decomposes a sentence into statements under a fixed schema; the gate checks; a repair loop re-runs on rejection | 1 | the one generative door is bounded | repair rounds before a loud failure | 0a |
| 0e | process | verify and the rejection-rate eval: re-hash every source with no network; compute rejection rate and time-to-ratify from the journal | 4 | the canary exists | the threshold at which it is reported | 0c |
| 0002 | unit | *period*: a whole number of steps, at least 1 | 4 | a second term, and a constraint that is a claim rather than a type | whether period 0 is excluded (recommended) or given a meaning | 0001 |
| 0003 | unit | *pulses*: step i pulses under period n when i divided by n leaves no remainder; rule: one period later, the answer is the same, for every step and period | 4 | the first rule with "always"; the checker's first real job | none | 0002 |
| 0004 | unit | *pulse count*: how many pulses have occurred by step i; rule: it rises by one every n steps | 4 | a second rule on the same terms | whether step 0's pulse is counted | 0003 |
| 0005 | unit | a running counter that increments once per step; rule: it produces the same pulses as the plain index | 4 | the first proof that two definitions agree; the first code replaceable unread | none | 0003 |
| 0006 | unit | *pattern*: a non-empty list of hits and rests that repeats; step i hits when the entry at (i divided by the length, remainder) is a hit | 4 | lists; the sequencer's central idea | whether the pattern length is 0002's period | 0003 |
| 0007 | unit | *beat*: an exact fraction of a whole note; step i sits at (clock × i) beats | 4 | exact fractions | unbounded fractions (recommended) or a fixed width | 0001 |
| 0008 | unit | *period in seconds*: 60 divided by the tempo | 3 | the first quantity that is not exact | exact fractions for time (recommended) or binary floating point | 0007 |

After 0008: the event list for a score with no timing adjustments; then
swing and humanize; then the renderer, expected at level 2 for its output
bytes with its structure at level 4.
