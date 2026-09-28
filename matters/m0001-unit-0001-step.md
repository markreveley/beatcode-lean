---
type: spec
title: "unit 0001 · step — the first coined term"
description: "Enter the term *step* as the first commitment of this repository: one operator-authored definition, its formal twin, the assertion that the two mean the same thing, and two further assertions about the term, each with a twin."
id: m0001
subject: unit-0001
state: proposed
tags: [unit-0001, rung-1, level-4]
sources:
  - path: units/0001-step/statements.md
    sha256: 75d94344ca5ceaffcfa3f36632d8cd98b57eec5d99a7c89b44c27754e397c531
  - path: units/0001-step/Step.lean
    sha256: 672c89d1266423a866752aac82ea662bd787c8eda47a2af367f822f8b026186e
threads:
  - threads/2026-09-27-ratification-of-step.md
  - threads/2026-09-28-founding-session.md
  - threads/2026-09-28-revision-6-session.md
runs:
  - runs/m0001-attempt-1.md
  - runs/m0001-attempt-2.md
  - runs/m0001-attempt-3.md
  - runs/m0001-attempt-4.md
  - runs/m0001-attempt-5.md
  - runs/2026-09-27-unit-0001-kernel-check.md
  - runs/2026-09-28-unit-0001-kernel-check.md
  - runs/2026-09-28-unit-0001-kernel-check-revision-6.md
  - runs/2026-09-28-unit-0001-correspondence-reading.md
generated:
  by: claude-code/2026-09-28
  at: 2026-09-28T22:00:00Z
---

# m0001 · unit 0001 · step

Type `spec` (doctrine/matters.md): the deliverable is normative text, the
statements of unit 0001, and the review question is contradiction.

## Proposed text

This matter carries the statements in the two sources it pins by hash in
its header (doctrine/matters.md, Sources I3). The text the operator
ratifies is this body and those two files at those hashes:

- `units/0001-step/statements.md` — the statements this matter asks the
  operator to ratify: ref_1 (the Lean file by path and hash), attest_1
  (the formal twin means the definition), attest_2 (the first step is
  step 0) and attest_3 (no upper bound), all model-authored and proposed,
  each assertion carrying the reading of its twin; def_1, the definition,
  is operator-authored and ratified on entry. The file also holds records,
  did_n, one per check run or attempt; they are evidence, they accrue with
  every attempt, and this matter does not count them.
- `units/0001-step/Step.lean` — sha256 `672c89d1266423a866752aac82ea662bd787c8eda47a2af367f822f8b026186e`.

## What it contradicts or supersedes

Nothing. No other matter exists.

## Blast radius

Empty today: no unit depends on unit 0001. Every later unit will, so the
radius grows with the plan. By doctrine/matters.md (Blast radius I2) this
matter takes one reader per lens.

## Attempts

- Attempt 1 (runs/m0001-attempt-1.md): run on 2026-09-28 before the attempt
  structure existed and logged in its shape afterwards. S1 pass, S2 pass,
  S3 fail at Q4 with three findings, one per assertion; Q1 to Q3 not run;
  S4, S5 not reached. Grade: fail. Answered by revising attest_2 (the
  clause "not step 1" dropped) and attest_3 ("a next step" became "a later
  step"); attest_1 kept, with the finding recorded in its note, because it
  describes the bridge itself: no checked Lean text states a denotation
  (the file's comments do, and comments are not checked).
- Attempt 2 (runs/m0001-attempt-2.md): S1 pass, S2 pass, S3 fail: Q1 three
  findings about this matter's own text, Q2 twelve findings of undefined
  or inconsistent rules and notation (eleven upheld), Q3 none, Q4 same on
  all three pairs. Grade: fail. Answered by the revision the log's last
  section describes: this matter's text, the doctrine's definitions and
  the unit file's format.
- Attempt 3 (runs/m0001-attempt-3.md): S1 pass, S2 pass, S3 fail: Q1 none,
  Q2 nine findings of undefined words in the rules, Q3 none, Q4 same on
  all three pairs. Grade: fail. Answered by the revision the log's last
  section describes: scope and term defined for the doctrine, and
  definitions for doctrine, bootstrap, trusted list and MNC.
- Attempt 4 (runs/m0001-attempt-4.md): S1 pass, S2 pass, S3 fail: Q1 one
  finding (this matter counted the unit's records and the count had gone
  stale), Q2 twenty-one findings (ten blocks without a definition, six
  real gaps, and five ordinary-English uses of words that are also block
  names, which followed from a rule that made every block name a term
  everywhere), Q3 none, Q4 same on all three pairs. Grade: fail. Answered
  by the revision the log describes: this matter no longer counts records;
  every block has a Def. line or refers to the one in README.md; a block
  name used in its ordinary sense is a plain word (doctrine/statements.md,
  Term I2).
- Attempt 5 (runs/m0001-attempt-5.md): run on 2026-09-28 after those
  revisions; result in the log.

## Ratification (pending)

The operator stated ratification of def_1's text in the session before any
commit existed (threads/2026-09-27-ratification-of-step.md, operator turn
2). The ratification act
(doctrine/matters.md, "Ratification act") is the operator's restatement of
this matter, covering each twin's reading, committed under `## Restatement`
as step S4 of an attempt whose steps S1 to S3 passed, and verified by a
fresh agent as step S5; until it is performed the state stays `proposed`
and nothing may depend on unit 0001.

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
