# beatcode-lean

## What this is

beatcode-lean is a music sequencer and renderer, built so that every part of
its behaviour is held in place by the strongest check that part admits, and
so that a person can read what each part promises without reading its code.

**What exists today:** one term, *step*, with its plain-language definition,
its formal twin, and the record of the one human act that accepted the
definition. See [Unit 0001](#unit-0001-step). Nothing else exists yet; the
description below of what the sequencer will do is aspiration.

**What it will do (aspiration, not built):** take a plain-text score — a
tempo, a number of bars, and voices, each with a pattern of hits and rests
that repeats at its own length — and produce two things: a list of timed
events (which voice, which step, at what time), and an audio file rendered
from those events with a built-in set of sounds. The same score always
produces exactly the same bytes, on any machine, and the program prints a
checksum of the output so that this can be verified. It runs offline with
no dependencies.

## The vocabulary

Every term below is used throughout this repository in exactly this sense.

**Operator.** The one human who accepts or rejects what enters this
repository. Agents (language-model programs) draft, check and record; they
never accept.

**Statement.** One sentence in plain language, of one of these kinds:

- a *definition* — coins a term (written *like this*) and says what it means;
- a *source* — points at a file in this repository by path and content hash;
- an *assertion* — says something holds;
- a *consequence* — says something follows from the statements it lists;
- a *record* — says something was done (a check was run, a result observed).

A statement lists the statements it depends on. A statement is either
*proposed* (drafted, not yet accepted) or *ratified* (accepted by the
operator). A statement the operator writes is ratified by being written; a
statement an agent writes is proposed until the operator ratifies it. The
full rules are in [doctrine/statements.md](doctrine/statements.md).

**Formal twin.** For a definition or a consequence, a matching declaration
in the Lean 4 language, in this repository, so that a program can check it.
The statement "this formal twin says exactly what this sentence says" is
itself an assertion, and only the operator can ratify it, because no program
can judge whether a name means what a sentence means.

**The checker.** Lean 4's kernel: a small program whose only job is to take a
formal claim and a proposed proof and answer accepted or rejected. It cannot
be argued with. When it accepts a claim it prints the list of assumptions the
proof relied on. Three assumptions are standard mathematics and always
allowed. Any other entry in that list means the claim was not fully checked
by the kernel — most often because Lean was allowed to run compiled code and
take the result on trust — and such a claim does not count as proved here.

**Unit.** A *thing* in the system: one or more definitions together with
the assertions and consequences about them, their formal twins, and the
records of the checks run on them, kept in one directory `units/NNNN-name/`.
Units are numbered, each names the units it depends on, and other units
depend on them. A unit is *done* when the matter that introduced it is
executed; a unit is not started until every unit it depends on is done.
Example: unit 0001 is the term *step*; unit 0002 will be the term *period*
and depends on 0001.

**Matter.** An *event*: one proposed change to this repository, kept as one
file `matters/mNNNN-slug.md`. Every change enters as a matter, is ratified
once, is executed once, and is then closed. A matter usually introduces one
unit, but a matter can also change the doctrine, or correct a unit that
already exists, and a unit can be touched by several matters over its life.
The difference in one line: a unit is a module; a matter is a pull request
with the operator's signature on it. A matter is `proposed`, `ratified`,
`executed`, `rejected`, or `challenged`; the states, the ratification act,
and the rules are in [doctrine/matters.md](doctrine/matters.md). A matter
carries statements; ratifying the matter ratifies the statements it carries.

**Test.** A check of the *software*: a program runs an input through a unit
and compares the output with an expectation. The expectation comes either
from a reference definition (level 2 below) or from a recording (level 3).
Tests run on every commit.

**Eval.** A measurement of the *process*: a number computed over many events
that says how the agents and the operator are doing. Examples: how often
agent-written statements fail the gate; how often the operator rejects a
proposed matter; the time between a matter being filed and being ratified.
Evals do not check the software; they watch the people and programs that
produce it. The one eval this repository commits to first is the
**rejection rate**: if the operator's rejections fall to zero, either the
agents have become perfect or the reading has stopped, and only one of
those is plausible.

**Evidence.** `runs/` holds records of checks that were run: the command,
the environment, the observed output, the verdict, the date. `threads/`
holds the operator's rulings as they were spoken or written, verbatim. Both
are written once and never edited.

## The verification spectrum

Every unit declares which of these five levels holds its behaviour in
place. The declaration is the unit's **label**. Levels are ordered from
strongest to weakest, and the aim of this repository is to push every part
of the sequencer to the highest level it can reach, and to leave level 4 —
which is where agent-written software normally sits — wherever possible.

1. **Proved.** A rule is stated that covers every possible input, and the
   checker has accepted a proof of it with only the three standard
   assumptions in its printed list. The code is never run to establish the
   rule.
   *Example:* "one period later, a step pulses exactly when it did one
   period earlier" — true for every step and every period, so no list of
   examples could establish it; the checker does, once.

2. **Checked against a reference.** A second, plain version of the same
   behaviour is written to be read rather than to be fast, and it is the
   definition of correct. The real code and the reference are both run on
   many generated inputs; any difference is a bug in one of them, and the
   written rule decides which. This is a test whose expected answers come
   from a definition. It is the standard way compilers and authorization
   engines are tested, under the name differential testing.
   *Example:* the renderer computes audio samples with a fast loop; the
   reference computes the same samples one at a time from the formula; a
   nightly run compares them on a thousand random scores.

3. **Checked against examples.** A fixed list of inputs with expected
   outputs, recorded once and frozen so that neither an agent nor a
   program can alter them. This is a test whose expected answers come from
   a recording; a program that memorises the list passes it.
   *Example:* four scores whose exact event lists and output checksums are
   stored in the repository and compared on every commit.

4. **Reviewed.** An agent wrote it; a human read it and approved it;
   nothing else checks it. This is the level ordinary pull-request review
   provides. It is named so that it can be counted: a unit at this level
   whose rejection rate is zero is the rejection-rate eval firing.
   *Example:* a script that plays a rendered file through whatever audio
   player the machine has.

5. **Trusted.** Nothing checks it and no one reads it; it is believed. The
   trusted list is written down so that what is being believed is
   visible. It has tiers: the three standard mathematical assumptions every
   Lean proof rests on; the checker itself; the Lean compiler and runtime
   that turn a checked definition into a running program; the operating
   system and hardware; and any library that arrives without proofs.
   *Example:* the arithmetic of whole numbers in Lean's standard library
   (proved, so it adds nothing); a C audio library (not proved, so it adds
   itself to the list).

Levels 2 and 3 are tests. A unit at level 1 still keeps a test at level 2
or 3, because the proof is about the definition and something must run the
built program. A unit is never labelled higher than its evidence, and
`check.sh` prints the evidence for level 1.

## The ladder

Units are added in this order, each introducing one new kind of obligation:

1. A coined term, resting only on standard mathematics. The operator's
   judgement is the only check. This is unit 0001.
2. A term whose formal twin has to be judged against it. The first
   "this name means this sentence" assertion.
3. A rule with "always" in it. The checker's first real job.
4. A second way of computing the same thing (a running counter beside the
   plain index). The first proof that two definitions agree. The first
   point at which code can be replaced without re-reading it.
5. A quantity that is not exact (a period in seconds). The first unit that
   lands on level 2 instead of level 1.

## The rule of minimum necessary complexity

One commit carries one matter. One matter carries the fewest statements
that can stand alone. A unit contains nothing its own statements do not
need. When a unit is hard to understand, the record must make it possible
to tell whether the difficulty belongs to the feature or was introduced by
this process.

## Unit 0001: step

- [units/0001-step/statements.md](units/0001-step/statements.md) — the
  definition of *step*, operator-authored and therefore ratified; three
  assertions about it (that the formal twin means it; that steps start at
  zero; that steps have no upper bound), proposed; and the record of the
  checker's run.
- [units/0001-step/Step.lean](units/0001-step/Step.lean) — the formal twin.
- [matters/m0001-unit-0001-step.md](matters/m0001-unit-0001-step.md) — the
  matter carrying the unit. State: **proposed**. The pending act is the
  operator naming the commit at which they read it.
- [runs/2026-09-27-unit-0001-kernel-check.md](runs/2026-09-27-unit-0001-kernel-check.md)
  — the checker accepted the formal twin; its two small claims relied on no
  assumptions at all.
- [threads/2026-09-27-ratification-of-step.md](threads/2026-09-27-ratification-of-step.md)
  — the operator's words accepting the definition.

## Next

[ROADMAP.md](ROADMAP.md) lists the next units in ladder order, the
obligation each introduces, and the decision each requires from the
operator. [HANDOFF.md](HANDOFF.md) says what the next agent may and may
not do.

## Running the check

```
LEAN_BIN=/path/to/lean-4.34.1/bin ./check.sh
```

Requires the Lean 4 toolchain named in `lean-toolchain`, nothing else. For
every unit it prints the checker's verdict, the printed assumption list for
each claim, and the content hash of the file.
