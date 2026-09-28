# Matters

The rules for how changes enter this repository. Terms are defined in
[README.md](../README.md).

```
File
  I1.   A matter is one file, matters/mNNNN-slug.md, with a YAML header.
  I2.   The header carries: type, title, description, id, subject, state, tags, sources,
        threads, runs, generated; and once ratified: restatement, verified,
        ratified_commit, ratified_sha256.
  I3.   Ids are allocated in sequence and never reused.
  I4.   A matter may be filed as a single sentence; the sections ratification needs may
        be added over several rounds.

Type
  T1.   spec     normative text (statements, doctrine). Ratification needs the proposed
                 text and what it contradicts or supersedes.
  T2.   feature  new behaviour (a unit). Ratification needs the unit's statements and
                 the plan for its formal twins and tests.
  T3.   fix      defective behaviour or text. Ratification needs the diagnosis and the
                 proposed fix.

Subject
  I1.   A matter names one subject: a unit (unit-NNNN) or the doctrine.
  I2.   A matter that would change two subjects is two matters.

Blast radius
  Def.  The blast radius of a matter is the set of units and matters that depend on
        what it changes.
  I1.   A matter states its blast radius, found by following dependencies.
  I2.   Review rigour follows blast radius, not type.

Sources
  I1.   A matter lists in `sources` every file its reasoning rests on.
  I2.   At ratification every listed source that is a statement or a matter is itself
        ratified.

State
  I1.   A matter is in exactly one state: proposed, ratified, executed, rejected,
        challenged.
  I2.   Transitions: proposed → ratified → executed; proposed → rejected;
        ratified → challenged → (ratified | superseded).
  I3.   proposed: filed; nothing may depend on it; its text is revised in place;
        discussion lives in threads and history in git; the matter's own record begins
        at ratification.
  I4.   ratified: the operator has performed the ratification act below.
  I5.   executed: the change has landed; a final ## Execution section states what
        landed, any deviation from the ratified text, the date, and the actor.
  I6.   Before acting on a ratified matter, a dev agent recomputes ratified_sha256 and
        stops if it differs.
  I7.   Nothing leaves executed; correcting executed work is a new matter.
  I8.   rejected: declined; the reason is the record.
  I9.   challenged: a ratified matter the operator disputes; it reads as not-ratified
        for every check; it never returns to proposed, because other matters may
        depend on it; its dependents are on notice; it leaves by re-ratification over
        corrected text or by supersession.
  I10.  Only the operator moves a matter between states.

Ratification act (restate to ratify)
  A1.   The operator reads the matter at a commit.
  A2.   The operator writes a restatement of the matter in their own words — what it
        changes, what it commits the repository to, what they are accepting — into the
        matter under ## Restatement, naming that commit, and commits it.
  A3.   A fresh agent, one that took no part in authoring the matter, verifies the
        restatement against the matter's text and writes the verification to runs/.
  A4.   A restatement passes when every commitment in the matter is present in it and
        it claims nothing the matter does not.
  A5.   A restatement that fails is revised by the operator, or the matter is revised;
        A1–A4 repeat.
  A6.   On a pass, the recording agent writes verified (who, when), ratified_commit
        (the commit named in A2), and ratified_sha256 (the hash of the body minus the
        header and minus ## Vetting, ## Restatement, ## Execution), and moves the
        state to ratified.
  A7.   The restatement is the artifact that shows the operator read the text; the pin
        is recorded after the act, never offered before it.

Vetting
  V1.   Before ratification a matter may be reviewed by fresh agents in rounds.
  V2.   Each reviewer takes one declared lens (the plan does what the statements say;
        nothing is undefined; the blast radius is as stated).
  V3.   Reviewers receive the matter, not earlier reviews.
  V4.   Vetting stops when two consecutive rounds surface nothing new.
  V5.   The operator may ratify at any round.

Channel
  I1.   The operator's channel is the repository: a committed edit, or a session
        exchange exported verbatim into threads/.
  I2.   Platform comments are not rulings.
  I3.   Every session a matter relies on is exported before the matter is ratified.
  I4.   Every commit after the bootstrap carries a `Matter: mNNNN` trailer.
  I5.   Branch names and pull-request titles are prefixed with the matter id.
  I6.   A pull request merges as a merge commit; its body is a one-line pointer.

Evidence
  I1.   runs/: one file per check run; never edited; a re-run is a new file.
  I2.   threads/: verbatim operator and agent turns, reasoning and tool traffic
        omitted; never edited.
  I3.   errors/: one file per agent error, id eNNNN; what happened, why as far as
        traceable, the guard added; never edited.

Determinism
  I1.   Anything a program can check is checked by a program once one exists: the
        header schema, id uniqueness, transitions, links, hashes, the checker's
        assumption lists, the sources rule, the five statement checks.
  I2.   Until the program exists, an agent checks by reading and says so in the run
        record.
  I3.   Agents are reserved for judgement; ratification is the operator's alone.

Bootstrap
  I1.   The first commit cannot pass through this process, because the process is not
        in the repository until it lands.
  I2.   The bootstrap is complete when the operator says it is.
  I3.   Until then the first commit is revised on main directly, and each revision says
        so in HANDOFF.md.
  I4.   After the bootstrap, everything enters as a matter.
```
