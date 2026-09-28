# Handoff

> Advisory, not normative. Verify repository state before acting; the
> matters supply scope. Nothing `proposed` governs.

## The goal, in the operator's words

Lock this repository at the final bootstrap, then port its last state to
a new repository as that repository's init commit (the operator, session
of 2026-09-28, turn 1; the new repository is `beatcode-lean-2`, empty as
of 2026-09-28). The operator has said there are no further actions from
them in the founding sessions: every act that is theirs is listed under
"Pending operator acts" and waits until they read. The operator's ruling
of 2026-09-29 governs everything else: no action without discussion. The
next agent reads, says what it finds, and waits; it files nothing and
runs nothing until the operator has discussed it.

## Observation

- `main` carries the bootstrap in its fifth revision. The sixth and
  seventh are on the branch `claude/gifted-brahmagupta-k12wgh`, in parts,
  awaiting the operator's merge (2026-09-28). The bootstrap is not final
  until the operator says so (doctrine/matters.md, Bootstrap); the
  revisions sit on a branch because the agent's session was confined to
  it, so the operator merges or asks for a direct push.
- Revision 6: the two theorem twins of unit 0001 restated so that each
  binds a step and says what its sentence says (the earlier twins held
  word for word for a type capped at 3); reader, reading, lens,
  correspondence reading, exclusion test and restatement defined; every
  lens mandatory; gate checks C6 and C7; five premises; the session
  exported.
- Revision 7: the attempt, steps S1 to S5 with one log per attempt in
  runs/, pass or fail, committed either way, every reader's prompt
  recorded verbatim; findings as a fixed shape; plain words and scope; a
  bounded rule for what counts as a term; the round-trip document; the
  error log's first entry; and seven attempts on m0001, each failing
  attempt answered by a revision, as the matter's Attempts section
  summarises and the table below shows; attempt 8 passed every step
  before the operator's and is open at S4.
- The operator turns that directed revisions 4 and 5 were not exported;
  threads/2026-09-28-founding-session.md ends before them. Agent turns
  after threads/2026-09-28-revision-7-session.md are summarised in
  threads/2026-09-28-revision-7-session-2.md; the operator's closing
  ruling is threads/2026-09-29-handoff-ruling.md.
- Actor: claude-code/2026-09-28.

## Where the attempts stand

| attempt | S1 | S2 | Q1 | Q2 | Q3 | Q4 | grade |
|---|---|---|---|---|---|---|---|
| 1 | pass | pass | not run | not run | not run | 3 findings | fail |
| 2 | pass | pass | 3 | 12 | none | same | fail |
| 3 | pass | pass | none | 9 | none | same | fail |
| 4 | pass | pass | 1 | 21 | none | same | fail |
| 5 | pass | pass | 4 | 1 | none | same | fail |
| 6 | pass | pass | 2 | 1 | none | same | fail |
| 7 | pass | pass | 1 | none | none | same | fail |
| 8 | pass | pass | none | none | none | same | open at S4 |

What the sequence shows. The unit's own layers, S1, S2, Q3 and Q4, have
been stable since attempt 2: the twins say what the sentences say, and
every fresh reader has confirmed it with the checker. Every failure since
has been in the matter's text or in the doctrine's definitions. Q2 found
twelve, nine, twenty-one and then one: the twenty-one came from a rule
that made every block name a term everywhere, which has no fixed point
over an English text, and the count fell to one once that rule was
bounded (doctrine/statements.md, Term I2). Q1's findings from attempt 4
on were the agent's own slips keeping the matter and the unit file in
step; the answer was to stop recording attempt outcomes in the unit file
at all (Unit file I5). A gate check that compares the matter's list of
statements with the unit file's ids would make that mechanical, and is
a candidate for PLAN.md item 0a.

## Pending operator acts

1. Say whether the bootstrap is final. If not, give the next revision.
2. Confirm or overturn the defaults adopted without a ruling in
   revisions 6 and 7, all recorded in the doctrine: readers per lens by
   blast radius, one or two (Blast radius I2); a block name used in its
   ordinary sense is a plain word (Term I2); attempt outcomes live in the
   matter and runs/, never in the unit file (Unit file I5); "position"
   and "sequence" stay plain words in def_1 until a statement needs their
   precise meaning (Plain word I2); the doctrine is the blocks in the
   form, and text outside them binds nothing (Doctrine).
3. Rule on the open questions below.
4. Once the bootstrap is final: perform S4 on m0001, the restatement
   (doctrine/matters.md, Ratification act A1 and A2; doctrine/round-trip.md
   walks it with an example). Attempt 8 is open there: every check and
   every lens passed, and the readings sit beside the sentences in
   units/0001-step/statements.md. A fresh agent then performs S5.
5. Merge the branch into main, or ask for a direct push.
6. Rule on the two evidence questions under "Open questions": whether
   agents' full transcripts are kept, and where.
7. When the bootstrap is final: name the tag for the lock and say which
   runs and threads travel to the init of `beatcode-lean-2`; the next
   agent then tags, ports the final tree, and reports the init commit.

## Open questions (raised in the exported sessions, not ruled)

- Rungs 1 and 2 of the ladder: unit 0001 carries rung 2's obligation
  (attest_1) while labelled rung 1. Merge the rungs, or relabel.
- Level I4 requires a level-4 unit to keep a test; unit 0001 has nothing
  to run. Qualify I4, or give a bare term no level.
- attest_2 and attest_3 follow from def_1's wording. Reclassify them as
  consequences (infer_1, infer_2), or leave them as assertions.
- Which runs and threads travel to the init of the next repository, and
  under what name the final commit here is tagged.
- Evidence beyond prompts and reports. Every attempt log holds each
  reader's prompt and report verbatim, and each reader's evidence section
  holds the commands it ran and their output verbatim; that is the
  boundary the doctrine records (Evidence I1, I4). The readers' full
  transcripts, their internal steps between prompt and report, exist only
  in the founding session's container and are lost when it is reclaimed;
  nothing in the repository cites them. The operator asked whether traces
  and tool calls should be persisted for error records, and whether such
  material belongs in another repository. The agent's recommendation:
  keep the boundary as it is for attempts and errors, since an error
  record already cites the run or thread that shows it (Evidence I4), and
  record a failed command as a run; if full transcripts are wanted, keep
  them in a separate evidence store referenced from the log by sha256,
  never as a source of rules or behaviour, so this repository stays small
  enough to read (MNC) and the reference cannot drift. Not ruled; until
  it is, no transcript is kept.
- jev, which the operator proposed as a reader. What the agent found: a
  decision-model service that returns a choice, a score and a confidence
  from a bounded answer set, whose own page says it is unsuitable for
  explanation tasks; also reachable through a Python adapter over an
  LLM, and possibly through Vercel. The doctrine requires a reader's
  finding to carry a reason and evidence (Finding I1) and a reading to be
  written from the Lean alone, which a bounded-answer model does not
  produce; so it cannot be a reader. It could be one more vote per pair,
  recorded beside the reader's finding and trusted at level 0, entering
  as a matter after the bootstrap once enough attempts exist to measure
  whether its votes track the operator's rulings, which is an eval.

## What the next agent may propose, after discussion

Nothing below is done until the operator has discussed it (the ruling of
2026-09-29, threads/2026-09-29-handoff-ruling-2.md). These are the
candidates, in the order the agent would raise them:

- PLAN.md item 0a as a `proposed` matter on an `m0002-` branch: the gate
  as a Lean program performing C1 to C7 and checking that a matter's list
  of statements agrees with its unit file; that check would have caught
  the slips behind attempts 4 to 7. Every commit on that branch would
  carry a `Matter: m0002` trailer.
- The next attempt on m0001 from S1, if any file it reads changes, with
  fresh readers and the prompts recorded in the latest attempt log.
  Otherwise m0001 waits at S4 and needs nothing.
- Acting as the fresh verifier of an operator restatement (S5), when
  asked, provided it took no part in authoring the matter.
- PLAN.md items 0b and unit 0002 as `proposed` matters on `m000N-`
  branches, each with statements, formal twins, readings and an attempt
  log, once 0a is settled.

## What the next agent may not do

- Take any action in the repository, including the candidates above,
  without first discussing it with the operator (ruling of 2026-09-29).
  Reading, and reporting what it reads, is not an action.
- Ratify anything, or write `verified` / `ratified_*` fields without a
  passing verification of an operator restatement.
- Edit `threads/`, `runs/` or `errors/` after the fact.
- Write a reading after seeing the sentence, or for a twin it wrote.
- Record an attempt's outcome as a statement in a unit file.
- Claim that a check catches a case without running the check on it
  (errors/e0001).
- Write several files from one script without verifying every edit
  first, or run a commit in the same command as an edit that can fail
  (errors/e0002).
- Start a unit whose dependencies are not `executed`.
- Raise a unit's level without the evidence the level names.
- Cite any repository other than this one as a source of rules or
  behaviour.
