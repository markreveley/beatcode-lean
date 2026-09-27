---
type: spec
title: "unit 0001 · step — the first coined term"
description: "Enter the term *step* as the first commitment of beatcode-lean: one operator-authored definition, its one-line formal twin, and the bridge statement between them."
id: m0001
state: proposed
status: draft
tags: [beatcode-lean, unit-0001, rung-1-term, label-proved]
sources:
  - units/0001-step/statements.md
  - units/0001-step/Step.lean
threads:
  - threads/2026-09-27-ratification-of-step.md
runs:
  - runs/2026-09-27-unit-0001-kernel-check.md
generated:
  by: claude-code/2026-09-27
  at: 2026-09-27T09:00:00Z
---

# m0001 · unit 0001 · step

Framework: Formic Matters, adopted by reference at
markreveley/rtr `9d863092bde37761b2d54b6a41e9a27c8145e0d1`
(`doctrine/matters.md`). Type `spec` because the deliverable is normative
text — the statements in `units/0001-step/statements.md` — and the review
question is contradiction: nothing precedes it, so it contradicts nothing.

## Proposed text

The ratified region of this matter is the statements file and the Lean
file it references, as they stand at the commit the operator names:

- `units/0001-step/statements.md` — six statements; def_1 is
  operator-authored and already ratified by authorship; attest_1
  (the bridge), attest_2 and attest_3 (the two decisions) are the
  proposals this matter carries.
- `units/0001-step/Step.lean` — sha256
  `b19edd4e93d64b6bc79c45b7774ac5802c50ebd094752882e2b3e02bb208eab4`.

## What it contradicts or supersedes

Nothing in this collection. Against the reference implementation
(markreveley/beatcode `4bec77d3d7f8f3a4010e0dbc8853107626b991ed`) it
diverges on one point, deliberately: steps are unbounded here and
64-bit there (attest_3).

## Ratification (pending)

The operator stated ratification of def_1's text in the session before any
commit existed (thread, operator turn 2). Under doctrine §6 the pin follows
the act and names a commit the operator read, so the record is incomplete
until the operator names the commit at which they read this matter. On that
act the recording agent writes `verified`, `ratified_commit` and
`ratified_sha256` (over this body minus frontmatter and the append-only
sections) and the state moves to `ratified`. Nothing else in this
repository may depend on unit 0001 until then.

## Bootstrap defaults (recorded, not ruled; doctrine §15)

Adopted by the authoring agent without an operator ruling, to be confirmed
or overturned by ratifying this matter:

1. The installation lives at the repository root (`matters/`, `runs/`,
   `threads/`, `units/`) rather than inside `.formic-matters/` as doctrine
   §12 prescribes for consumers, because this repository is nothing but
   the process and its units.
2. The socrates render is hand-written in loadout-v0 notation; no gate was
   run, because the socrates harness is not installed here. The form checks
   were done by reading. Installing the harness is roadmap item 0.
3. A matter of type `spec` is the vehicle for statement-carrying changes;
   ratifying the matter ratifies the statements it carries (two grains, one
   act).
4. Each unit carries `rung` and `label` in its statements file; `check.sh`
   is the only enforcement today. A CI rule that a `label: proved` unit
   shows only the standard axioms is roadmap item 0.
