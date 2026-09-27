# Roadmap — the next units, each with the obligation it introduces and the decision it forces

Order is by rung on the ladder (README). A unit is not started until every
unit it depends on is `executed`. Items marked 0 are process, not units.

| # | unit | rung | new obligation | decision the operator must make | depends on |
|---|---|---|---|---|---|
| 0a | install the socrates harness; run the gate over `units/*/statements.md` in CI | process | the gate runs by machine, not by reading | whether hand-rendered notation is acceptable until then (m0001 default 2) | — |
| 0b | CI rule: a `label: proved` unit prints only standard axioms; `leanchecker` on every `.olean`; matter hash equals ratified hash | process | labels are enforced, not declared | none | — |
| 0c | socrates loadout edit, through use: optional formal-twin field on `infer`/`def`; a `did` shape for "kernel accepted with axioms Z" | process | the bridge is data the gate can check for existence | ratify the loadout edit in socrates' own collection | 0a |
| 0002 | *period*: a whole number of steps, at least 1 | 1 | a second term; a constraint (≥ 1) that is a proposition, not a type | is period 0 excluded (recommended) or given a meaning | 0001 |
| 0003 | *pulses*: step i pulses under period n when i mod n = 0; theorem: one period later, the same answer, for every i and n | 3 | the first "always"; the kernel's first real job | none new; this is beatcode's `clock` with the gate stripped | 0002 |
| 0004 | *pulse count*: how many pulses have occurred by step i (i div n); theorem: it rises by exactly one every n steps | 3 | a second provable rule on the same terms | whether the count includes step 0's pulse | 0003 |
| 0005 | the running counter: a sequencer state that increments; theorem: it produces the same pulses as the index | 4 | the first refinement proof — spec versus implementation | none; this is where code first becomes ephemeral | 0003 |
| 0006 | *gate pattern*: a non-empty list of hit/rest that cycles; step i hits iff pattern[i mod length] is a hit | 3 | lists, and the "load-bearing idea" of beatcode (lanes cycling) | reuse 0003's period as the list length | 0003 |
| 0007 | *beat*: an exact fraction of a whole note; steps are `clock × i` beats | 3 | exact rationals (core `Rat`); the first divergence family from v0.1's i64 rationals | unbounded fractions (recommended) or a width limit | 0001 |
| 0008 | *period in seconds*: 60 / tempo; the first quantity that is not exact | 5 | the spectrum: this unit is `tested against a model`, not `proved`, unless tempo is kept rational | exact rational time (recommended) versus the reference's f64 pipeline — the decision the spike identified as the one beatcode-lean must make | 0007 |

Beyond 0008 the reference implementation's remaining modules follow the
spike's ranking: the straight-grid event compiler for `four.bc` (its golden
is reproducible from exact fractions), then swing/humanize, then the
renderer as a Lean-compiled binary labelled `tested against examples`.
