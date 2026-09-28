---
type: spec
title: "unit 0001 · step — the first coined term"
description: "Enter the term *step* as the first commitment of this repository: one operator-authored definition, its formal twin, and the assertion that the two mean the same thing."
id: m0001
subject: unit-0001
state: proposed
tags: [unit-0001, rung-1, level-4]
sources:
  - units/0001-step/statements.md
  - units/0001-step/Step.lean
threads:
  - threads/2026-09-27-ratification-of-step.md
  - threads/2026-09-28-founding-session.md
  - threads/2026-09-28-revision-6-session.md
runs:
  - runs/2026-09-27-unit-0001-kernel-check.md
  - runs/2026-09-28-unit-0001-kernel-check.md
  - runs/2026-09-28-unit-0001-kernel-check-revision-6.md
  - runs/2026-09-28-unit-0001-correspondence-reading.md
generated:
  by: claude-code/2026-09-28
  at: 2026-09-28T17:30:00Z
---

# m0001 · unit 0001 · step

Type `spec` (doctrine/matters.md): the deliverable is normative text, the
statements of unit 0001, and the review question is contradiction.

## Proposed text

The ratified region of this matter is the two files below as they stand at
the commit the operator names:

- `units/0001-step/statements.md` — seven statements. def_1 is
  operator-authored and ratified on entry. attest_1 (the formal twin means
  the definition), attest_2 (steps start at zero) and attest_3 (steps have
  no upper bound) are the proposals this matter carries; each carries the
  reading of its twin. did_1 and did_2 are records of the checker's run and
  the reader's run.
- `units/0001-step/Step.lean` — sha256 `672c89d1266423a866752aac82ea662bd787c8eda47a2af367f822f8b026186e`.

## What it contradicts or supersedes

Nothing. No other matter exists.

## Blast radius

Empty today: no unit depends on unit 0001. Every later unit will, so the
radius grows with the plan. By doctrine/matters.md (Blast radius I2) this
matter takes one reader per lens.

## Vetting

- Q4, correspondence: read on 2026-09-28 by a fresh reader who received the
  Lean file alone and then the sentences; readings, verdicts and exclusion
  tests in `runs/2026-09-28-unit-0001-correspondence-reading.md`. All three
  verdicts are **not same**; under doctrine/matters.md V4 the matter is in
  revision. The findings, in the reader's terms:
  1. attest_1 / `Step`: the abbrev fixes the carrier (whole numbers, from
     zero, unbounded) but states no denotation; "naming a position in a
     sequence" has no counterpart in the Lean and cannot have one, so it is
     carried by the name alone and by the operator's act.
  2. attest_2 / `step_first`: the twin states that 0 is at or below every
     step; the sentence's clause "not step 1" is not stated by the twin.
  3. attest_3 / `step_succ`: the twin states that every step has a later
     step (no maximum); the sentence's "next step" claims an immediate
     successor, which the twin does not state.
  Resolutions proposed by the commissioning agent, not ruled: leave
  attest_1 as it is, since the finding describes the bridge itself; reword
  attest_2 to "the first *step* is step 0"; reword attest_3 to "a *step*
  has no upper bound: for every step there is a later step", discreteness
  being carried by def_1's "whole number". The alternative for 2 and 3 is
  to strengthen the twins instead.
- Q1, Q2, Q3: not yet read.

## Ratification (pending)

The operator stated ratification of def_1's text in the session before any
commit existed (thread, operator turn 2). The ratification act
(doctrine/matters.md, "Ratification act") is the operator's restatement of
this matter, covering each twin's reading, committed under `## Restatement`
after a vetting pass in which no lens found anything, and verified by a
fresh agent; until it is performed the state stays `proposed` and nothing
may depend on unit 0001.

## Bootstrap defaults (recorded, not ruled)

Adopted by the authoring agent without an operator ruling; confirmed or
overturned by ratifying this matter:

1. The statement checks of doctrine/statements.md (C1–C7) are performed by
   reading, because no gate program exists here yet (PLAN.md 0a).
2. A matter of type `spec` is the vehicle for a unit's statements, and
   ratifying the matter ratifies the statements it carries.
3. Each unit declares its rung and level in its statements file, and
   `check.sh` is the only enforcement of the level (PLAN.md 0b).
4. This repository names no other repository as a source of rules or
   behaviour; the doctrine documents are complete in themselves.
5. Readers per lens are one when the blast radius is empty and two
   otherwise (doctrine/matters.md, Blast radius I2).
