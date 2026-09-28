# Handoff

> Advisory, not normative. Verify repository state before acting; the
> matters supply scope. Nothing `proposed` governs.

## Observation

- `main` carries the bootstrap in its fourth revision (2026-09-28). Since the third: every
  definition and rule is written as one claim per line (Def / In / Now /
  Ref); the verification levels are numbered 0–4 from the ground, trusted
  being level 0; a matter names its subject; ROADMAP.md is PLAN.md, a list
  of matters not yet filed. Since the
  second: the verification spectrum has five numbered levels with an example
  each, and *reviewed* is a level so it can be counted; *test* and *eval*
  are defined and separated; *unit* and *matter* are defined side by side;
  the doctrine absorbs the operator-approved process rules (restate-to-
  ratify as the ratification act, blast radius, declared sources, vetting
  lenses, the error log, hash verification before execution); the plan
  names the gate and the rest of the statement harness as Lean units to be
  built here; the founding session is exported verbatim to `threads/`.
- The bootstrap is not final until the operator says so; until then
  revisions land on `main` directly (doctrine/matters.md, "The bootstrap").
- Actor: claude-code/2026-09-28.

## Pending operator acts

1. Say whether the bootstrap is final. If not, give the next revision.
2. Once final: perform the restate-to-ratify act on m0001 (doctrine/matters.md,
   "The ratification act"): read `matters/m0001-unit-0001-step.md` and
   `units/0001-step/statements.md` at a commit, write your restatement into
   the matter naming that commit, and a fresh agent verifies it. The
   operator's ratification of def_1's text is already on record; the
   restatement and the pin are what is missing.
3. Confirm or overturn the bootstrap defaults listed in m0001.

## What the next agent may do

- Prepare PLAN.md items 0a, 0b and unit 0002 as `proposed` matters on
  `m000N-` branches, each with statements, formal twins and a run record.
- Re-run `./check.sh` and add a new run record if anything changed.
- Act as the fresh verifier of an operator restatement, if asked, provided
  it took no part in authoring the matter.

## What the next agent may not do

- Ratify anything, or write `verified` / `ratified_*` fields without a
  passing verification of an operator restatement.
- Edit `threads/`, `runs/` or `errors/` after the fact.
- Start a unit whose dependencies are not `executed`.
- Raise a unit's level without the evidence the level names.
- Cite any repository other than this one as a source of rules or
  behaviour.
