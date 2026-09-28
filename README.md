# beatcode-lean

## What this is

beatcode-lean is an offline, deterministic music compiler and renderer.

```
beatcode-lean
  Def.  beatcode-lean is an offline, deterministic music compiler and renderer.
  Aim.  Every part is held by the highest level it can reach, and its statements say which.
  Now.  One unit exists: the term *step*, with its definition, its formal twin, fresh
        readers' readings of that twin, and the record of the act that accepted the
        definition; its matter has passed every check and every lens and waits on the
        operator's restatement. Nothing else exists. (2026-09-29)
```

**Aspiration.** A plain-text score goes in: a tempo, a number of bars, and
voices, each with a pattern of hits and rests that repeats at its own
length. Two things come out: a list of timed events (which voice, which
step, at what time), and an audio file rendered from those events with a
built-in set of sounds. The same score always produces exactly the same
bytes on any machine, and the program prints a checksum of the output so
that this can be verified. It runs with no network and no dependencies.

## How it is built

Every part of the program enters this repository as **statements**: plain
sentences, one claim each, typed and linked to what they rest on. Each
definition or rule receives a **formal twin** in Lean where one is
possible; the **checker** decides whether the twin holds, and a fresh
**reader** writes down what the twin says. Each **unit** declares the
**level** of evidence that holds it. Nothing enters without an act of the
**operator**. Each bold term is defined below.

## How to read this document

Every term is defined once, in the form below, and used in exactly that
sense everywhere in this repository.

```
Form
  Def.  The form is the shape of every block in the doctrine, a name followed by
        labelled lines; this block is its template.
  I1.   Def. gives what the name means in one sentence; it is a definition.
  I2.   A line labelled with a letter and a number is an assertion: I an invariant, K a
        kind, C a check, T a type, A a step of the ratification act, V a vetting rule,
        Q a lens, S a step of an attempt, L a layer, R a rung, P a premise.
  I3.   Aim. is an intention: not a claim, not checkable, the one line that is not a
        statement.
  I4.   Now. is a record: what exists today, dated.
  I5.   Ref. names the file holding the rules; it is a pointer, not a source statement,
        because it carries no hash.
  I6.   A block in doctrine/ whose name is defined in README.md begins with a Ref. line
        naming README.md instead of a second Def. line.
  Ref.  doctrine/statements.md, Term, for how a term is written in a block.
```

Every block below follows the form, so the doctrine is checked and ratified
the same way a unit is. Sentences outside the code blocks are commentary and
bind nothing.

## Premises

The rules below rest on beliefs about agents and operators. They are
written down so that a rule can be traced to the belief it serves, and so
that the belief itself can be rejected.

```
Premise
  Def.  A premise is a belief about agents and operators that a rule of this repository
        rests on; it is asserted, not checked.
  P1.   A statement that other statements depend on needs an owner who can be held to it;
        ratification names that owner, and the owner is always the operator.
  P2.   Agent readers share blind spots with agent authors; a reading is fresh only when
        the reader shares no context with the author.
  P3.   The rejection rate measures nothing unless the last reader can reject.
  P4.   A council that stamps and an operator who stamps the council are two layers of
        the same failure.
  P5.   The code the operator still reads is exactly the code that could not be raised to
        a higher level.
```

## Three layers

```
Layer
  Def.  A layer is one of the three forms a part of the program takes on its way
        from intention to checked code.
  L1.   The operator's sentence: intent in the operator's own words.
  L2.   Statements: the sentence decomposed into claims of one kind each, typed and
        linked; the layer a human ratifies one claim at a time.
  L3.   The formal twin: the Lean declaration the checker checks.
  I1.   One assertion in L2 connects L2 to L3: "this twin says exactly what this
        sentence says". No deterministic check decides it; a reader reads for it; only
        the operator ratifies it.
  I2.   A unit is complete when all three layers exist and the connecting assertion
        is ratified.
```

Unit 0001 walks the three layers. L1: "a whole number, counting from
zero, naming a position in a sequence" (the operator's words). L2:
`def_1` (that sentence as a definition), `ref_1` (the Lean file by hash),
`attest_1` (the twin means the definition), `attest_2` and `attest_3`
(the two decisions), `did_1` (the checker's run). L3: `abbrev Step := Nat`. The line that only the operator
can ratify is `attest_1`.

## Vocabulary

```
Offline
  Def.  Offline means the program uses no network and no external service at run time.
Deterministic
  Def.  Deterministic means the same score produces exactly the same output bytes on
        any machine.
Compiler
  Def.  The compiler is the part that takes score text in and produces the event list.
Renderer
  Def.  The renderer is the part that takes the event list in and produces the audio
        file.
  Now.  Neither the compiler nor the renderer exists. (2026-09-28)

Operator
  Def.  The operator is the one human who accepts or rejects what enters this repository.
  I1.   Agents draft, check and record; agents never accept.
  I2.   Only the operator changes the state of a statement or a matter.

Agent
  Def.  An agent is a language-model program acting in this repository.
  I1.   Everything an agent writes is proposed until the operator ratifies it.
  I2.   An agent that reads a matter under a lens, or verifies a restatement, took no
        part in authoring the matter.

Reader
  Def.  A reader is an agent, or the operator, who reads a matter under one lens.
  I1.   A reader is fresh when it shares no context with the matter's author (P2).

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
  I6.   A statement is typed: its kind, id, dependencies, author and state are data the
        gate checks; its sentence is the only part written for a person.
  Ref.  doctrine/statements.md

Formal twin
  Def.  A formal twin is a Lean 4 declaration in this repository that corresponds to
        a definition, an assertion or a consequence.
  I1.   The claim "this twin says exactly what this sentence says" is itself an
        assertion, written by an agent, ratified only by the operator.
  I2.   No deterministic check decides I1: the checker judges only the twin and the
        gate only the form. A reader reads for I1; only the operator's act binds it.
  I3.   A twin's content is what it excludes: the wrong definitions of the term under
        which it would be false.
  I4.   A twin is smaller than its sentence when the sentence rejects a wrong definition
        that the twin lets through.
  I5.   A twin is a check that runs against every future definition of the term.
  I6.   Every statement that names a twin carries a reading, and none is ratified before
        its correspondence reading exists.

Reading
  Def.  A reading is a formal twin rendered into plain language from the Lean text alone.
  I1.   A reading is written before its writer sees the sentence the twin is claimed to
        express.
  I2.   A reading is written by a reader who took no part in writing the twin.

Lens
  Def.  A lens is the one question a reader is assigned before they read a matter.
  I1.   Every matter is read under every lens before it is ratified.
  Ref.  doctrine/matters.md

Correspondence reading
  Def.  A correspondence reading is the record a reader produces under the correspondence
        lens: for each twin in the matter's subject, its reading, its sentence, the
        verdict, and the exclusion test.
  Ref.  doctrine/matters.md

Exclusion test
  Def.  The exclusion test names a wrong definition of a term that the sentence rules out
        and says whether the twin rejects it.
  I1.   A twin that rejects no wrong definition is empty, whatever the checker says of it.

Restatement
  Def.  A restatement is the operator's own account of a matter, written into the matter
        naming the commit read.
  I1.   A restatement covers every commitment in the matter and every reading it carries,
        and claims nothing the matter does not.
  I2.   A restatement shows that the operator read the matter and is not a source of
        truth; written in the operator's words, it cannot be satisfied by copying.
  Ref.  doctrine/matters.md

Attempt
  Def.  An attempt is one pass of a matter through the check sequence, in order, at one
        version of the files.
  I1.   An attempt runs the steps in order and stops at the first failure.
  I2.   Every step records pass, fail or not reached; the attempt passes only when every
        step passes.
  I3.   An attempt is recorded whether it passes or fails, as one file in runs/, and is
        never edited.
  I4.   A failed attempt is answered by a revision of the matter and a new attempt from
        the first step.
  I5.   An attempt whose reached steps all pass and whose next step is the operator's
        is open; it passes or fails when the operator acts.
  Ref.  doctrine/matters.md

Finding
  Def.  A finding is a report that a step of an attempt failed: where, what differs or
        fails, and the evidence.
  I1.   A finding has a fixed shape and lives in the attempt log; it is not a statement,
        and nothing depends on it.
  I2.   A finding is answered by a revision, never by argument in the log.
  Ref.  doctrine/matters.md

Plain word
  Def.  A plain word is a word in a sentence that is not a *term*: ordinary language,
        read as the operator reads it.
  I1.   Plain words are on the trusted list, level 0: no check reads them.
  I2.   A plain word becomes a term when a statement needs its precise meaning; the
        definition is then a new statement, and the sentence that used the word depends
        on it.

Checker
  Def.  The checker is Lean 4's kernel: a small program that takes a formal claim
        and a proposed proof and answers accepted or rejected.
  I1.   The checker cannot be argued with.
  I2.   On acceptance the checker prints the list of assumptions the proof relied on.
  I3.   Three assumptions are always permitted; they are Lean's standard axioms, on
        which all of Lean's mathematics rests:
        propext — two propositions that imply each other are the same proposition;
        Classical.choice — from "something with this property exists" one may pick one;
        Quot.sound — two things declared equivalent may be treated as equal.
  I4.   A proof whose list contains only those three is as trustworthy as Lean itself.
  I5.   Lean provides a door for claims too large for the kernel to evaluate: it runs
        compiled code and takes the result on trust, and stamps the claim with an
        assumption whose name contains `_native`.
  I6.   A claim stamped with a `_native` assumption is not proved: for that claim the
        Lean compiler has moved from outside the proof to inside the trusted list.
  I7.   Such a claim is at most level 3, with compiled code as the reference.
  I8.   A level-4 unit containing such a claim fails the check (PLAN.md 0b); until
        that rule exists, check.sh prints every list and the rule is applied by eye.

Unit
  Def.  A unit is a thing: the smallest set of statements that stands on its own.
  I1.   A unit is one directory, units/NNNN-name/.
  I2.   A unit contains definitions, the assertions and consequences about them,
        their formal twins, and the records of checks run on them.
  I3.   A unit names the units it depends on.
  I4.   A unit is done when the matter that introduced it is executed.
  I5.   A unit is not started until every unit it depends on is done.
  I6.   A unit may be the subject of several matters over its life.
  I7.   A unit declares its level (0–4) and is never labelled above what holds it.
  Now.  One unit exists, 0001 (step); its matter m0001 is proposed.

Matter
  Def.  A matter is an event: one proposed change to this repository.
  I1.   A matter is one file, matters/mNNNN-slug.md.
  I2.   Every change to this repository enters as a matter.
  I3.   A matter names its subject: one unit, or the doctrine.
  I4.   A matter is ratified at most once.
  I5.   A matter is executed at most once.
  I6.   A matter is in exactly one state: proposed, ratified, executed, rejected,
        challenged, superseded.
  I7.   Only the operator moves a matter between states.
  I8.   A matter lands through a pull request whose merge commit follows the
        operator's restatement.
  I9.   A matter carries the statements in the sources it pins by hash; ratifying the
        matter ratifies those statements at those hashes.
  I10.  The pin is the pair ratified_commit and ratified_sha256, recorded after the
        ratification act.
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
  Aim.  Tests run on every commit.
  Now.  Nothing runs on any commit; the rule is PLAN.md 0b. (2026-09-28)

Eval
  Def.  An eval is a measurement of the process: a number computed over many events
        that says how the agents and the operator are doing.
  I1.   An eval does not check the software.
  I2.   The first eval this repository commits to is the rejection rate: the share
        of proposed matters the operator rejects.
  I3.   A rejection rate that falls to zero is reported to the operator, because
        either the agents became perfect or the operator no longer reads (P3).

Doctrine
  Def.  The doctrine is the binding text of this repository: every block in the form
        inside the code blocks of README.md and of the files in doctrine/.
  I1.   Text outside those blocks, including a code block that is not in the form, is
        commentary and binds nothing.

Evidence
  Def.  Evidence is a record that is written once and never edited.
  I1.   runs/ holds attempt logs and the records they cite: claim, environment,
        command, observed output, verdict, date, actor.
  I2.   threads/ holds the operator's rulings as spoken or written, verbatim.
  I3.   errors/ holds agent errors: what happened, why, and the guard added.
```

## The verification spectrum

```
Level
  Def.  A level is the strength of what holds a unit's behaviour in place.
  I1.   Levels are numbered 0–4 from the ground up; a higher level holds more strongly.
  I2.   Level 0 is the ground every other level rests on and is not a goal.
  I3.   Every unit declares one level.
  I4.   A unit at level 4 also keeps a test at level 2 or 3, because the proof is about
        the definition and something must run the built program.
  I5.   The aim is to raise every unit to the highest level it can reach and to leave
        level 1 wherever possible.
  I6.   The operator reads what holds the unit: the trusted list at level 0, the code at
        level 1, the examples and the sentence at level 2, the reference and the rule at
        level 3, the rule at level 4 (P5).

Trusted list
  Def.  The trusted list is what level 0 believes without a check: the three standard
        assumptions, the checker, the Lean compiler and runtime, the operating system
        and hardware, any library that arrives without proofs, and plain words.
  I1.   The trusted list is written down so that what is believed is visible.
```

**Level 0 — trusted.** Nothing checks it and no one reads it; it is believed.
The trusted list is written down so that what is being believed is visible.
Its tiers: the three standard mathematical assumptions every Lean proof
rests on; the checker itself; the Lean compiler and runtime that turn a
checked definition into a running program; the operating system and
hardware; any library that arrives without proofs. Example: the
arithmetic of whole numbers in Lean's standard library is proved and adds
nothing to the list; a C audio library is not and adds itself.

**Level 1 — reviewed.** An agent wrote it; a human read it and approved it;
nothing else checks it. This is what ordinary pull-request review
provides, and it is where agent-written software normally sits. It is a
level so that it can be counted. Example: a script that plays a rendered
file through whatever audio player the machine has.

**Level 2 — checked against examples.** A fixed list of inputs with
expected outputs, recorded once and frozen so that neither an agent nor a
program can alter them. A test whose expected answers come from a
recording; a program that memorises the list passes it. Example: four
scores whose exact event lists and output checksums are stored and
compared on every commit.

**Level 3 — checked against a reference.** A second, plain version of the
same behaviour, written to be read rather than to be fast, is the
definition of correct. The real code and the reference run on many
generated inputs; any difference is a bug in one of them, and the written
rule decides which. A test whose expected answers come from a definition;
the standard way compilers and authorization engines are tested, under the
name differential testing. Example: the renderer computes samples with a
fast loop; the reference computes them one at a time from the formula; a
nightly run compares them on a thousand random scores.

**Level 4 — proved.** A rule is stated that covers every possible input,
and the checker has accepted a proof of it with only the three standard
assumptions in its printed list. The code is never run to establish the
rule. Example: "one period later, a step pulses exactly when it did one
period earlier" is true for every step and every period; no list of
examples could establish it; the checker does, once.

## The ladder

```
Ladder
  Def.  The ladder is the order in which units are added, each introducing one new
        sort of obligation.
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

Rung
  Def.  A rung is one line of the ladder; a unit declares the rung of the newest
        obligation it introduces.
```

## Minimum necessary complexity

```
MNC
  Def.  Minimum necessary complexity, MNC, is the rule that nothing enters the
        repository beyond what its own statements need.
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
  have no upper bound), proposed, each carrying its twin's reading; the
  record of the checker's run; the readers' runs are in the attempt logs.
- [units/0001-step/Step.lean](units/0001-step/Step.lean): the formal twin.
- [matters/m0001-unit-0001-step.md](matters/m0001-unit-0001-step.md): the
  matter, subject unit 0001, state **proposed**. Attempt 8
  (runs/m0001-attempt-8.md) passed the gate, the checker and all four
  lenses and is open at S4: the operator's restatement is the next step.
- [runs/2026-09-28-unit-0001-kernel-check-revision-6.md](runs/2026-09-28-unit-0001-kernel-check-revision-6.md):
  the checker accepted the twin; its two claims relied on no assumptions.
- [runs/m0001-attempt-8.md](runs/m0001-attempt-8.md): the open attempt,
  with every reader's prompt and report verbatim; attempts 1 to 7 are
  beside it, each a fail answered by a revision.
- [threads/2026-09-27-ratification-of-step.md](threads/2026-09-27-ratification-of-step.md):
  the operator's words accepting the definition, before the process
  existed.

## Next

[doctrine/round-trip.md](doctrine/round-trip.md) — one matter's whole path, step by
step, with unit 0001 as the walk and a worked restatement.
[PLAN.md](PLAN.md) — the matters not yet filed, in ladder order.
[HANDOFF.md](HANDOFF.md) — what the next agent may and may not do.

## Running the check

```
LEAN_BIN=/path/to/lean-4.34.1/bin ./check.sh
```

Requires the Lean 4 toolchain named in `lean-toolchain`, nothing else. For
every unit it prints the checker's verdict, the printed assumption list for
each claim, and the content hash of the file.
