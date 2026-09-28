# Matters

The rules for how changes enter this repository. Terms are defined in
[README.md](../README.md); this document adds the rules.

## What a matter is

One proposed change, as one file `matters/mNNNN-slug.md` with a YAML
header: `type`, `title`, `description`, `id`, `state`, `tags`, `sources`,
`threads`, `runs`, `generated`, and once ratified `restatement`,
`verified`, `ratified_commit`, `ratified_sha256`. Ids are allocated in
sequence and never reused. A matter may be filed as a single sentence; the
sections it needs for ratification can be added over several rounds.

## Types

- `spec` — normative text: statements, doctrine, this file. Ratification
  requires the proposed text and what it contradicts or supersedes.
- `feature` — new behaviour: a unit. Ratification requires the unit's
  statements and the plan for its formal twins and tests.
- `fix` — defective behaviour or text. Ratification requires the diagnosis
  and the proposed fix.

## Blast radius

Review rigour follows how much depends on the change, not its type. A
matter states its radius: the units and matters that depend on what it
changes, found by following dependencies. A change to a term that every
later unit rests on (such as *step*) has the largest radius in the
repository and gets the most review; a change to a comment has none.

## Declared sources

A matter lists in `sources` every file its reasoning rests on. At
ratification every declared source that is a statement or a matter must
itself be ratified; a matter cannot be ratified on the strength of a
proposal.

## States

```
proposed → ratified → executed
proposed → rejected
ratified → challenged → (ratified | superseded)
```

- `proposed`: filed. Nothing may depend on it. While proposed, its text is
  simply revised; discussion lives in threads and history in git; the
  matter's own record begins at ratification.
- `ratified`: the operator has performed the act below.
- `executed`: the change has landed and a final `## Execution` section
  states what landed, any deviation from the ratified text, the date, and
  the actor. Before a dev agent acts on a ratified matter it recomputes
  the matter's hash and stops if it differs from `ratified_sha256`. Nothing
  leaves `executed`; correcting executed work is a new matter.
- `rejected`: declined; the reason is the record.
- `challenged`: a ratified matter the operator disputes. It reads as
  not-ratified for every check, but is never returned to `proposed`,
  because other matters may already depend on it; its dependents are on
  notice. It leaves by re-ratification over corrected text or by
  supersession.

Only the operator moves a matter between states.

## The ratification act: restate to ratify

Ratification is not a click and not a hash the agent offers in advance. It
is three steps:

1. **The operator restates the matter in their own words** — what it
   changes, what it commits the repository to, and what they are accepting
   — and commits that restatement into the matter under `## Restatement`,
   naming the commit at which they read the matter.
2. **A fresh agent, one that took no part in authoring the matter,
   verifies the restatement against the matter's text** and records the
   verification in `runs/`: every commitment in the matter is present in
   the restatement, and the restatement claims nothing the matter does not.
   A restatement that omits or adds a commitment fails, and the operator
   either revises it or revises the matter.
3. **On a passing verification the recording agent writes** `verified`
   (who, when), `ratified_commit` (the commit the operator named), and
   `ratified_sha256` — the hash of the matter's body minus its header and
   minus the append-only `## Vetting`, `## Restatement` and `## Execution`
   sections — and moves the state to `ratified`.

The restatement is the artifact that proves the operator read the text.
The pin is recorded after the act, from the commit the operator named.

## Vetting

Before ratification a matter may be reviewed by fresh agents in rounds.
Each reviewer takes one declared lens (for example: does the plan do what
the statements say; is anything left undefined; what is the blast radius).
Reviewers are given the matter, not earlier reviews, so that the first
pass of each is unanchored. Vetting stops when two consecutive rounds
surface nothing new. The operator may ratify at any round, including the
first.

## Where rulings live

The operator's channel is the repository: a committed edit, or a session
exchange exported verbatim into `threads/`. Platform comments are not
rulings. Every session whose exchanges a matter relies on is exported
before the matter is ratified. Every commit after the bootstrap carries a
`Matter: mNNNN` trailer; branches and pull-request titles are prefixed with
the matter id; a pull request is merged as a merge commit and its body is
a one-line pointer.

## Evidence

`runs/`: one file per check run — the claim tested, the environment, the
exact command, expected and observed output, verdict, date, actor. Never
edited; a re-run is a new file. `threads/`: verbatim exports of operator
and agent turns, reasoning and tool traffic omitted; never edited.
`errors/`: one file per agent error — what happened, why as far as it can
be traced, and the guard added so it cannot recur — with ids `eNNNN` that
guards in tooling cite. Never edited.

## Deterministic wherever possible

Anything a program can check — the header schema, id uniqueness, state
transitions, link resolution, hashes, the checker's assumption lists, the
declared-sources rule, the five statement checks — is checked by a program
once one exists, and by reading until then. Every place this document says
"a program checks" is, today, "an agent checks by reading and says so in
the run record"; the roadmap's process items replace those one by one.
Agents are reserved for judgement. Ratification is the operator's alone.

## The bootstrap

The first commit of this repository cannot pass through this process,
because the process is not in the repository until it lands. The bootstrap
is complete when the operator says it is; until then the first commit may
be revised on `main` directly, and every revision says so in `HANDOFF.md`.
After that, everything enters as a matter.
