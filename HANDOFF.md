# Handoff

> Advisory, not normative. Verify repository state before acting; the
> matters supply scope. Nothing `proposed` governs.

## Observation

- `main` carries the bootstrap in its second revision (2026-09-28): the
  README rewritten as a self-contained present-tense description with every
  term defined before use; the two doctrine documents extracted inline;
  unit 0001, matter m0001 (`proposed`), two run records, one thread export.
  The bootstrap is not final until the operator says so (doctrine/matters.md,
  "The bootstrap"); until then revisions land on `main` directly.
- Actor: claude-code/2026-09-28.

## Pending operator acts

1. Say whether the bootstrap is final. If not, give the next revision.
2. Once final: read `matters/m0001-unit-0001-step.md` and
   `units/0001-step/statements.md` at a commit, and state ratification of
   m0001 naming that commit. The operator's ratification of def_1's text is
   on record; the pin is what is missing.
3. Confirm or overturn the bootstrap defaults listed in m0001.

## What the next agent may do

- Prepare roadmap items 0a, 0b and unit 0002 as `proposed` matters on
  `m000N-` branches, each with statements, formal twins and a run record.
- Re-run `./check.sh` and add a new run record if anything changed.

## What the next agent may not do

- Ratify anything, or write `verified` / `ratified_*` fields without an
  operator act naming a commit.
- Edit `threads/` or `runs/` after the fact.
- Start a unit whose dependencies are not `executed`.
- Raise a unit's label without the evidence the label names.
- Cite any repository other than this one as a source of rules or
  behaviour.
