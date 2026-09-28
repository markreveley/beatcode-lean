# beatcode-lean

## What this is

beatcode-lean is a music sequencer and renderer, built so that every part of
its behaviour is held in place by the strongest check that part admits, and
so that a person can read what each part promises without reading its code.

**Now (2026-09-28).** One unit exists: the term *step*, with its definition,
its formal twin, and the record of the act that accepted the definition.
Nothing else exists. The paragraph below is aspiration.

**Aspiration.** A plain-text score goes in: a tempo, a number of bars, and
voices, each with a pattern of hits and rests that repeats at its own
length. Two things come out: a list of timed events (which voice, which
step, at what time), and an audio file rendered from those events with a
built-in set of sounds. The same score always produces exactly the same
bytes on any machine, and the program prints a checksum of the output so
that this can be verified. It runs offline with no dependencies.

## How to read this document

Every term is defined once, in the form below, and used in exactly that
sense everywhere in this repository.

```
Term
  Def.  what the term means — one sentence
  In.   an invariant: something always true of it — one claim per line
  Now.  what exists today, dated
  Ref.  where the rules are
```

## Vocabulary

```
Operator
  Def.  The operator is the one human who accepts or rejects what enters this repository.
  I1.   Agents draft, check and record; agents never accept.
  I2.   Only the operator changes the state of a statement or a matter.

Agent
  Def.  An agent is a language-model program acting in this repository.
  I1.   Everything an agent writes is proposed until the operator ratifies it.
  I2.   An agent that verifies a restatement took no part in authoring the matter.

Statement
  Def.  A statement is one sentence in plain language, of one of five kinds:
        definition (coins a *term*), source (points at a file by path and hash),
        assertion (says something holds), consequence (says something follows from
        the statements it lists), record (says something was done).
  I1.   A statement lists the statements it depends on.
  I2.   A statement is in exactly one state: proposed or ratified.
  I3.   A statement written by the operator is ratified by being written.
  I4.   A statement written by an agent is proposed until the matter carrying it is ratified.
  I5.   Every *term* used in a statement has a definition in scope.
  Ref.  doctrine/statements.md

Formal twin
  Def.  A formal twin is a Lean 4 declaration in this repository that corresponds to
        a definition or a consequence.
  I1.   The claim "this twin says exactly what this sentence says" is itself an
        assertion, written by an agent, ratified only by the operator.
  I2.   No program can judge I1; the checker judges only the twin.

Checker
  Def.  The checker is Lean 4's kernel: a small program that takes a formal claim
        and a proposed proof and answers accepted or rejected.
  I1.   The checker cannot be argued with.
  I2.   On acceptance the checker prints the list of assumptions the proof relied on.
  I3.   Three assumptions are standard mathematics and are always permitted.
  I4.   Any other entry in the printed list means the claim was not fully checked by
        the kernel; the usual cause is that Lean ran compiled code and took the
        result on trust.
  I5.   A claim with a non-standard entry in its list is not proved.

Unit
  Def.  A unit is a thing: the smallest set of statements that stands on its own.
  I1.   A unit is one directory, units/NNNN-name/.
  I2.   A unit contains definitions, the assertions and consequences about them,
        their formal twins, and the records of checks run on them.
  I3.   A unit names the units it depends on.
  I4.   A unit is done when the matter that introduced it is executed.
  I5.   A unit is not started until every unit it depends on is done.
  I6.   A unit may be the subject of several matters over its life.
  I7.   A unit declares its level (0–4) and is never labelled above its evidence.
  Now.  One unit exists, 0001 (step); its matter m0001 is proposed.

Matter
  Def.  A matter is an event: one proposed change to this repository.
  I1.   A matter is one file, matters/mNNNN-slug.md.
  I2.   Every change to this repository enters as a matter.
  I3.   A matter names its subject: one unit, or the doctrine.
  I4.   A matter is ratified at most once.
  I5.   A matter is executed at most once.
  I6.   A matter is in exactly one state: proposed, ratified, executed, rejected,
        challenged.
  I7.   Only the operator moves a matter between states.
  I8.   A matter lands through a pull request whose merge commit follows the
        operator's restatement.
  I9.   A matter carries statements; ratifying the matter ratifies the statements
        it carries.
  Ref.  doctrine/matters.md

Plan
  Def.  A plan is an ordered list of matters not yet filed.
  I1.   A plan governs nothing; only a filed matter can be ratified.
  I2.   Each entry names its subject, the level it is expected to reach, the new
        obligation it introduces, and the decision it asks of the operator.
  Now.  PLAN.md

Test
  Def.  A test is a check of the software: a program runs an input through a unit
        and compares the output with an expectation.
  I1.   The expectation comes from a reference definition (level 3) or from a
        recording (level 2).
  I2.   Tests run on every commit.

Eval
  Def.  An eval is a measurement of the process: a number computed over many events
        that says how the agents and the operator are doing.
  I1.   An eval does not check the software.
  I2.   The first eval this repository commits to is the rejection rate: the share
        of proposed matters the operator rejects.
  I3.   A rejection rate that falls to zero is reported to the operator, because
        either the agents became perfect or the reading stopped.

Evidence
  Def.  Evidence is a record that is written once and never edited.
  I1.   runs/ holds records of checks: claim, environment, command, observed output,
        verdict, date, actor.
  I2.   threads/ holds the operator's rulings as spoken or written, verbatim.
  I3.   errors/ holds agent errors: what happened, why, and the guard added.
```

## The verification spectrum

```
Level
  Def.  A level is the kind of evidence that holds a unit's behaviour in place.
  I1.   Levels are numbered 0–4 from the ground up; a higher level is stronger evidence.
  I2.   Level 0 is the ground every other level rests on and is not a goal.
  I3.   Every unit declares one level.
  I4.   A unit at level 4 also keeps a test at level 2 or 3, because the proof is about
        the definition and something must run the built program.
  I5.   The aim is to raise every unit to the highest level it can reach and to leave
        level 1 wherever possible.
```

**Level 0 — trusted.** Nothing checks it and no one reads it; it is believed.
The trusted list is written down so that what is being believed is visible.
Its tiers: the three standard mathematical assumptions every Lean proof
rests on; the checker itself; the Lean compiler and runtime that turn a
checked definition into a running program; the operating system and
hardware; any library that arrives without proofs. *Example:* the
arithmetic of whole numbers in Lean's standard library is proved and adds
nothing to the list; a C audio library is not and adds itself.

**Level 1 — reviewed.** An agent wrote it; a human read it and approved it;
nothing else checks it. This is what ordinary pull-request review
provides, and it is where agent-written software normally sits. It is a
level so that it can be counted. *Example:* a script that plays a rendered
file through whatever audio player the machine has.

**Level 2 — checked against examples.** A fixed list of inputs with
expected outputs, recorded once and frozen so that neither an agent nor a
program can alter them. A test whose expected answers come from a
recording; a program that memorises the list passes it. *Example:* four
scores whose exact event lists and output checksums are stored and
compared on every commit.

**Level 3 — checked against a reference.** A second, plain version of the
same behaviour, written to be read rather than to be fast, is the
definition of correct. The real code and the reference run on many
generated inputs; any difference is a bug in one of them, and the written
rule decides which. A test whose expected answers come from a definition;
the standard way compilers and authorization engines are tested, under the
name differential testing. *Example:* the renderer computes samples with a
fast loop; the reference computes them one at a time from the formula; a
nightly run compares them on a thousand random scores.

**Level 4 — proved.** A rule is stated that covers every possible input,
and the checker has accepted a proof of it with only the three standard
assumptions in its printed list. The code is never run to establish the
rule. *Example:* "one period later, a step pulses exactly when it did one
period earlier" is true for every step and every period; no list of
examples could establish it; the checker does, once.

## The ladder

```
Ladder
  Def.  The ladder is the order in which units are added, each introducing one new
        kind of obligation.
  R1.   A coined term resting only on standard mathematics; the operator's judgement
        is the only check.
  R2.   A term whose formal twin must be judged against it; the first "this name
        means this sentence" assertion.
  R3.   A rule with "always" in it; the checker's first real job.
  R4.   A second way of computing the same thing; the first proof that two
        definitions agree; the first point at which code can be replaced unread.
  R5.   A quantity that is not exact; the first unit that lands on level 3 instead
        of level 4.
  Now.  Unit 0001 is on rung 1.
```

## Minimum necessary complexity

```
MNC
  I1.   One commit carries one matter.
  I2.   One matter carries the fewest statements that stand alone.
  I3.   A unit contains nothing its own statements do not need.
  I4.   When a unit is hard to understand, the record makes it possible to tell
        whether the difficulty belongs to the feature or was introduced by this
        process.
```

## Unit 0001 — step

- [units/0001-step/statements.md](units/0001-step/statements.md): the
  definition of *step*, written by the operator and therefore ratified;
  three assertions (the formal twin means it; steps start at zero; steps
  have no upper bound), proposed; the record of the checker's run.
- [units/0001-step/Step.lean](units/0001-step/Step.lean): the formal twin.
- [matters/m0001-unit-0001-step.md](matters/m0001-unit-0001-step.md): the
  matter, subject unit 0001, state **proposed**. Pending: the operator's
  restatement.
- [runs/2026-09-28-unit-0001-kernel-check.md](runs/2026-09-28-unit-0001-kernel-check.md):
  the checker accepted the twin; its two claims relied on no assumptions.
- [threads/2026-09-27-ratification-of-step.md](threads/2026-09-27-ratification-of-step.md):
  the operator's words accepting the definition, before the process
  existed.

## Next

[PLAN.md](PLAN.md) — the matters not yet filed, in ladder order.
[HANDOFF.md](HANDOFF.md) — what the next agent may and may not do.

## Running the check

```
LEAN_BIN=/path/to/lean-4.34.1/bin ./check.sh
```

Requires the Lean 4 toolchain named in `lean-toolchain`, nothing else. For
every unit it prints the checker's verdict, the printed assumption list for
each claim, and the content hash of the file.
