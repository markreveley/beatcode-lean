---
type: spec
title: "unit 0001 · step — the first coined term"
description: "Enter the term *step* as the first commitment of this repository: one operator-authored definition, its formal twin, and the assertion that the two mean the same thing."
id: m0001
subject: unit-0001
state: proposed
status: draft
tags: [unit-0001, rung-1, level-4]
sources:
  - units/0001-step/statements.md
  - units/0001-step/Step.lean
threads:
  - threads/2026-09-27-ratification-of-step.md
runs:
  - runs/2026-09-27-unit-0001-kernel-check.md
  - runs/2026-09-28-unit-0001-kernel-check.md
generated:
  by: claude-code/2026-09-28
  at: 2026-09-28T00:00:00Z
---

# m0001 · unit 0001 · step

Type `spec` (doctrine/matters.md): the deliverable is normative text, the
statements of unit 0001, and the review question is contradiction.

## Proposed text

The ratified region of this matter is the two files below as they stand at
the commit the operator names:

- `units/0001-step/statements.md` — six statements. def_1 is
  operator-authored and ratified on entry. attest_1 (the formal twin means
  the definition), attest_2 (steps start at zero) and attest_3 (steps have
  no upper bound) are the proposals this matter carries.
- `units/0001-step/Step.lean` — sha256 `874763ffa2fa57201981e79400a5e20e2991f7c1bb59af2a15d866381a4adce7`.

## What it contradicts or supersedes

Nothing. No other matter exists.

## Blast radius

Every later unit depends on *step*; this is the largest radius the
repository will have.

## Ratification (pending)

The operator stated ratification of def_1's text in the session before any
commit existed (thread, operator turn 2). The ratification act
(doctrine/matters.md, "Ratification act") is the operator's restatement of
this matter committed under `## Restatement`, verified by a fresh agent;
until it is performed the state stays `proposed` and nothing may depend on
unit 0001.

## Bootstrap defaults (recorded, not ruled)

Adopted by the authoring agent without an operator ruling; confirmed or
overturned by ratifying this matter:

1. The statement checks of doctrine/statements.md are performed by reading,
   because no gate program exists here yet (roadmap 0a).
2. A matter of type `spec` is the vehicle for a unit's statements, and
   ratifying the matter ratifies the statements it carries.
3. Each unit declares its rung and level in its statements file, and
   `check.sh` is the only enforcement of the label (roadmap 0b).
4. This repository names no other repository as a source of rules or
   behaviour; the doctrine documents are complete in themselves.
