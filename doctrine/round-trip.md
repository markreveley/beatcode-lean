# One round trip

How one matter goes from the operator's sentence to a ratified unit, step
by step, with unit 0001 as the walk. Every term is defined in
[README.md](../README.md); the rules are in
[matters.md](matters.md) and [statements.md](statements.md). This document
is commentary: it binds nothing and repeats the rules only to show them
in order.

## The cast

- **The operator**: the one human. Writes the first sentence, rules on
  findings, writes the restatement, and is the only one who ratifies.
- **An agent**: a language-model program. Decomposes the sentence into
  statements, writes the Lean, files the matter, runs the checks, records
  everything. Never ratifies.
- **A fresh reader**: an agent, or the operator, that shares no context
  with whoever wrote the thing it reads. Reads under one lens and reports
  findings or the word none.
- **The checker**: Lean's kernel. Accepts or rejects a Lean file. Cannot be
  argued with.
- **The gate**: seven mechanical checks on the statements. Today performed
  by an agent reading, since no program exists yet.

## The files

- `units/0001-step/statements.md`: the statements, one per line, typed.
- `units/0001-step/Step.lean`: the formal twins.
- `matters/m0001-unit-0001-step.md`: the matter, with its state.
- `runs/m0001-attempt-K.md`: one log per attempt, pass or fail, never
  edited, citing the check records and readings it used.
- `threads/`: the operator's words, verbatim. `errors/`: agent errors.

## Before the attempt: the three layers

**Layer 1, the operator's sentence.** The operator wrote, in a session
exported to `threads/2026-09-27-ratification-of-step.md`:

> a whole number, counting from zero, naming a position in a sequence

Written by the operator, so ratified on entry. Every other line in the
unit is proposed until the matter is ratified.

**Layer 2, the statements.** An agent decomposed the intent into typed
statements. Each has a kind, an id, dependencies in parentheses, an
author and a state; the sentence is the only part written for a person.

- `def_1`: *step*: the sentence above. Definition. Operator. Ratified.
- `ref_1`: the file `Step.lean` by path and hash. Source. Model. Proposed.
- `attest_1` (def_1, ref_1): the Lean declaration `Step` denotes exactly
  *step*. Assertion. Model. Proposed. This is the bridge: the one line
  only the operator can judge.
- `attest_2` (def_1): the first *step* is step 0. Assertion. Model.
  Proposed. Twin: `step_first`.
- `attest_3` (def_1): a *step* has no upper bound: for every step there
  is a later step. Assertion. Model. Proposed. Twin: `step_succ`.
- `did_1`, `did_2`: records of what was run. Model.

Words in a sentence that are not marked *like this* are plain words:
ordinary language, part of the trusted base. "Position" and "sequence"
are plain words in def_1. They become terms only when a later statement
needs their precise meaning.

**Layer 3, the formal twins.** An agent wrote `Step.lean`. Three
declarations. Each is shown with the part the operator reads, the
statement before `:=`, and its reading in words:

```lean
abbrev Step := Nat
```
Reading: Step is another name for Nat, the whole numbers 0, 1, 2, and so on.

```lean
theorem step_first (s : Step) : 0 ≤ s
```
Reading: for every step s, zero is less than or equal to s.

```lean
theorem step_succ (s : Step) : ∃ t : Step, s < t
```
Reading: for every step s, there exists a step t such that s is less
than t.

What follows `:=` in the file is the proof, offered to the checker. The
operator never reads it; the checker is stricter than any reader, and
prints the one fact about a proof that matters, the assumptions it used.

**The matter.** An agent filed `m0001`: type spec, subject unit-0001,
state proposed, listing the two unit files as its sources.

## The attempt

An attempt runs the five steps in order at one state of the files and
stops at the first failure. Each step records pass, fail or not reached.
The whole attempt is one file in `runs/`, committed whether it passes or
fails. A failed attempt is answered by a revision of the matter and a new
attempt from S1, the way a failed build is answered by a fix and a new
build.

**S1, the gate.** Seven mechanical checks on the statements: ids are well
formed and unique; every dependency resolves; every *term* has a
definition in scope; every source's hash matches its file; no
model-authored line is marked ratified; a sentence that says every, any,
all, each, no, always or never has a twin that binds a variable; a twin
proved by nothing but "by definition" is flagged for the reader. Actor:
a program once one exists, until then an agent reading. Unit 0001,
attempt 1: pass.

**S2, the checker.** `check.sh` runs Lean on every unit file and prints,
per theorem, the list of assumptions the proof used. Pass when every file
is accepted and every level-4 claim's list holds only the three standard
assumptions. Unit 0001, attempt 1: pass; both lists empty.

**S3, the lenses.** Four questions, each put to a fresh reader who
receives the matter and the question and nothing else:

- Q1: does the matter's plan do what the statements say?
- Q2: is anything undefined?
- Q3: is the blast radius as stated?
- Q4: does every twin say what its sentence says?

Q4 runs in two parts, in that order. First the reader receives the Lean
file alone and writes each declaration's reading, so the translation is
made before the reader can be steered by the sentence. Then the reader
receives the sentences, gives a verdict per pair, and runs the exclusion
test: it names a wrong definition of the term that the sentence rules
out, and checks whether the twin rejects it, using the checker where it
can. The point of the test is that a twin is judged by what it excludes.
A twin that rejects no wrong definition is empty, however true.

Unit 0001, attempt 1, Q4, in plain words. The reader's readings matched
those above. Its verdicts were "not same" on all three pairs:

1. `attest_1`: the sentence says the name denotes *step*; the Lean only
   says Step is the whole numbers. No Lean text can say "position in a
   sequence". The reader's wrong definition was "a count of things, not a
   position"; the twin cannot tell them apart. Kept: this is the bridge,
   and the finding states exactly what the operator's act carries.
2. `attest_2`: the sentence then read "the first step is step 0, not step
   1"; the Lean never mentions 1. The reader's wrong definitions were
   "counting from one" and "the integers"; the twin rejects both. Fixed
   by dropping "not step 1".
3. `attest_3`: the sentence then read "every step has a next step"; the
   Lean says a later step exists, not an immediate one. The reader's
   wrong definition was "a whole number with a largest value", and it
   chose 0 to 255 as the example cap; the twin rejects it (the claim is
   false for that type, and the reader had the checker prove so). Fixed
   by changing "a next step" to "a later step"; "whole number" in def_1
   already carries that steps are discrete.

Any finding fails S3. Attempt 1 failed here; the revisions above were
made; attempt 2 began at S1.

**S4, the restatement.** Reached only when S1 to S3 pass. The operator
reads the matter at a named commit with each twin's reading beside its
sentence, and writes, in their own words, what the matter changes, what
it commits the repository to, what they are accepting, and what each twin
says. The restatement is a check that a reading happened, not a source
of truth: it cannot be satisfied by copying. Derived in this order: the
Lean statement line, its reading, the sentence, the exclusion test, then
what is accepted.

A restatement for m0001 might read as follows. This is an example written
by an agent to show the shape; it is not the operator's and binds nothing.

> Read at commit <sha>. This matter enters one term, step, which I
> defined as a whole number counting from zero that names a position in a
> sequence. Beyond the definition it commits the repository to three
> things. That the Lean name Step stands for step: the Lean itself only
> says Step is the whole numbers, and I accept that "position in a
> sequence" is carried by my definition and my act, not by the Lean. That
> the first step is step 0: the Lean says zero is at or below every step,
> and I read that as the same claim. That steps have no upper bound: the
> Lean says for every step there is a later step, and I read that as the
> same claim. I accept the checker's record that both theorems hold with
> no assumptions. I accept the five bootstrap defaults listed in the
> matter. Nothing else is claimed.

**S5, the verification.** A fresh agent compares the restatement with the
matter: every commitment present, every reading covered, nothing claimed
that the matter does not. On a pass it records who verified and when, the
commit named, and the hash of the ratified text, and moves the matter to
ratified. On a fail the operator revises the restatement or the matter,
and the attempt continues at S4.

## After the attempt

A ratified matter lands through a pull request merged as a merge commit,
its commits carrying a `Matter: m0001` trailer; the matter moves to
executed, its final section says what landed, and the unit is done. From
then on other units may depend on *step*. Correcting it later is a new
matter, never an edit.

## What the operator reads, and only that

For unit 0001: their own sentence; the three sentences of attest_1 to
attest_3; the three readings; the findings of any failed attempt; the
statement line of each theorem, the part before `:=`; and the checker's
printed assumption lists. Not the proofs, not the prompts that produced
the statements, not any agent's reasoning.
