# Handoff

> Advisory, not normative. Verify repository state before acting; the
> matters supply scope. Nothing `proposed` governs.

## Observation

- Bootstrap commit on `main` (this repository's rtr §14 exception): the
  methodology, unit 0001, matter m0001 in `proposed`, one run record, one
  thread export. Actor: claude-code/2026-09-27.

## Pending operator acts

1. **Name the commit** at which you read `matters/m0001-unit-0001-step.md`
   and `units/0001-step/statements.md`, and state ratification of m0001.
   Your ratification of def_1's *text* is already on record
   (threads/2026-09-27-ratification-of-step.md); the pin is what is
   missing. On that act the recording agent writes `verified`,
   `ratified_commit`, `ratified_sha256` and moves the state — via a
   matter-prefixed branch and a PR merged as a merge commit.
2. Confirm or overturn the four bootstrap defaults listed in m0001.

## What the next agent may do

- Prepare roadmap items 0a–0c and unit 0002 as `proposed` matters on
  `m000N-` prefixed branches, each with its statements file, formal twin,
  and run record.
- Re-run `./check.sh` and append a new run record if anything changed.

## What the next agent may not do

- Ratify anything, or write `verified`/`ratified_*` fields without an
  operator act naming a commit.
- Edit `threads/` or `runs/` after the fact.
- Start any unit whose dependencies are not `executed`.
- Change a unit's `label` upward without the evidence the label names.
