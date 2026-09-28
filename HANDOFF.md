# Handoff

> Advisory, not normative. Verify repository state before acting; the
> matters supply scope. Nothing `proposed` governs.

## Observation

- `main` carries the bootstrap in its fifth revision; the sixth is on the
  branch `claude/gifted-brahmagupta-k12wgh`, awaiting the operator's merge
  (2026-09-28). The sixth revision: the two theorem twins of unit 0001 are
  restated so that each binds a step and says what its sentence says (the
  earlier twins held word for word for a type capped at 3); every
  statement that names a twin carries the twin's reading; a fresh reader's
  correspondence reading is in `runs/` and finds all three pairs not the
  same, so m0001 is in revision; the doctrine defines reader,
  reading, lens, correspondence reading, exclusion test and restatement,
  makes every lens mandatory, fixes readers per lens by blast radius, adds
  gate checks C6 and C7, and states five premises; the README says what
  the operator reads at each level; the session that ruled these changes
  is exported to `threads/`.
- The bootstrap is not final until the operator says so; until then
  revisions land on `main` directly (doctrine/matters.md, "Bootstrap").
  This revision sits on a branch because the agent's session was confined
  to it; the operator merges it or asks for a direct push.
- The operator turns that directed revisions 4 and 5 were not exported;
  `threads/2026-09-28-founding-session.md` ends before them. Only the
  session that holds them can export them.
- Actor: claude-code/2026-09-28.

## Pending operator acts

1. Rule on the correspondence reading's three findings (m0001, "Vetting"):
   for each of attest_1, attest_2 and attest_3, keep the sentence, reword
   it, or strengthen the twin. Until then m0001 is in revision (V4).
2. Say whether the bootstrap is final. If not, give the next revision.
3. Rule on the open questions below.
4. Once final: have m0001 read under lenses Q1–Q3 (Q4 is done, with
   findings), then
   perform the restate-to-ratify act on m0001 (doctrine/matters.md,
   "Ratification act"): read the matter and the unit's statements at a
   commit, with each twin's reading beside its sentence, write your
   restatement covering each reading, and a fresh agent verifies it.
5. Confirm or overturn the bootstrap defaults listed in m0001.

## Open questions (raised in threads/2026-09-28-revision-6-session.md, not ruled)

- Rungs 1 and 2 of the ladder: unit 0001 carries rung 2's obligation
  (attest_1) while labelled rung 1. Merge the rungs, or relabel the unit.
- Level I4 requires a level-4 unit to keep a test; unit 0001 has nothing
  to run. Qualify I4, or give a bare term no level.
- attest_2 and attest_3 follow from def_1's wording. Reclassify them as
  consequences (infer_1, infer_2), or leave them as assertions.
- Which runs and threads travel to the init of the next repository, and
  under what name the final commit here is tagged.
- The operator named a system, "jev", as a possible reader; the agent
  could not find it and asked what it is.

## What the next agent may do

- Read m0001 under lenses Q1–Q3 as a fresh reader and write each reading
  to `runs/`, provided it took no part in authoring the matter.
- Prepare PLAN.md items 0a, 0b and unit 0002 as `proposed` matters on
  `m000N-` branches, each with statements, formal twins, readings and run
  records.
- Re-run `./check.sh` and add a new run record if anything changed.
- Act as the fresh verifier of an operator restatement, if asked, provided
  it took no part in authoring the matter.

## What the next agent may not do

- Ratify anything, or write `verified` / `ratified_*` fields without a
  passing verification of an operator restatement.
- Edit `threads/`, `runs/` or `errors/` after the fact.
- Write a reading after seeing the sentence, or for a twin it wrote.
- Start a unit whose dependencies are not `executed`.
- Raise a unit's level without the evidence the level names.
- Cite any repository other than this one as a source of rules or
  behaviour.
