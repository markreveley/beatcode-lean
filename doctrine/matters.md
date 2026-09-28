# Matters

The rules for how changes enter this repository.

## What a matter is

One proposed change, as one file `matters/mNNNN-slug.md` with a YAML
header (`type`, `title`, `description`, `id`, `state`, `tags`, `sources`,
`threads`, `runs`, `generated`, and once ratified `verified`,
`ratified_commit`, `ratified_sha256`). Ids are allocated in sequence and
never reused. A matter may be filed as a single sentence; the sections it
needs for ratification can be added over several rounds.

## Types

- `spec` — the change is normative text: statements, doctrine, this file.
  Ratification requires the proposed text and what it contradicts or
  supersedes.
- `feature` — new behaviour. Ratification requires the unit's statements
  and the plan for its formal twins and evidence.
- `fix` — defective behaviour or text. Ratification requires the diagnosis
  and the proposed fix.

## States

```
proposed → ratified → executed
proposed → rejected
ratified → challenged → (ratified | superseded)
```

- `proposed`: filed. Nothing may depend on it.
- `ratified`: the operator read the matter at a specific commit and stated
  ratification naming that commit. The recording agent then writes
  `verified` (who, when), `ratified_commit`, and `ratified_sha256`, the
  hash of the matter's body minus its header and minus the append-only
  `## Vetting` and `## Execution` sections. The pin is recorded after the
  act, from the commit the operator named; a pin offered in advance is not
  a record.
- `executed`: the change has landed and a final `## Execution` section
  states what landed, any deviation from the ratified text, the date, and
  the actor. Nothing leaves `executed`; correcting executed work is a new
  matter.
- `rejected`: declined; the reason is the record.
- `challenged`: a ratified matter the operator disputes. It reads as
  not-ratified for every check, but it is never returned to `proposed`,
  because other matters may already depend on it. It leaves by
  re-ratification over corrected text or by supersession.

Only the operator moves a matter between states.

## Where rulings live

The operator's channel is the repository: a committed edit, or a session
exchange exported verbatim into `threads/`. Platform comments are not
rulings. Every commit after the bootstrap carries a `Matter: mNNNN` trailer;
branches and pull-request titles are prefixed with the matter id; a pull
request is merged as a merge commit and its body is a one-line pointer.

## Evidence

`runs/`: one file per check run — the claim tested, the environment, the
exact command, expected and observed output, verdict, date, actor. Never
edited; a re-run is a new file. `threads/`: verbatim exports of operator
and agent turns; never edited.

## Deterministic wherever possible

Anything a program can check — the header schema, id uniqueness, state
transitions, link resolution, hashes, the checker's assumption lists — is
checked by a program once one exists, and by reading until then. Agents are
reserved for judgement. Ratification is the operator's alone.

## The bootstrap

The first commit of this repository cannot pass through this process,
because the process is not in the repository until it lands. The bootstrap
is complete when the operator says it is; until then the first commit may
be revised on `main` directly, and every revision says so in `HANDOFF.md`.
After that, everything enters as a matter.
