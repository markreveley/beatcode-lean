# Matters

The rules for how changes enter this repository. Terms are defined in
[README.md](../README.md).

```
Matter file
  Def.  A matter file is the file that holds a matter.
  I1.   A matter is one file, matters/mNNNN-slug.md, with a YAML header.
  I2.   The header carries: type, title, description, id, subject, state, tags, sources
        (each a path and its sha256), threads, runs, generated (by, at); and once
        ratified: restatement, verified, ratified_commit, ratified_sha256.
  I3.   Ids are allocated in sequence and never reused.
  I4.   A matter may be filed as a single sentence; the sections ratification needs may
        be added over several rounds.
  I5.   The body's sections ## Attempts, ## Restatement and ## Execution are excluded
        from the hash in A6; every other section is part of the text ratified.
  I6.   The proposed text identifies its L1 commitments and their provenance; no
        separate initial natural-language specification is required.

Type
  Def.  A type is what a matter changes: normative text, behaviour, or a defect.
  T1.   spec     normative text (statements, doctrine). Ratification needs the proposed
                 text and what it contradicts or supersedes.
  T2.   feature  new behaviour (a unit). Ratification needs the unit's statements and
                 the twins and tests it proposes.
  T3.   fix      defective behaviour or text. Ratification needs the diagnosis and the
                 proposed fix.

Subject
  Def.  The subject of a matter is the one unit, or the doctrine, it changes.
  I1.   A matter names one subject: a unit (unit-NNNN) or the doctrine.
  I2.   A matter that would change two subjects is two matters.

Blast radius
  Def.  The blast radius of a matter is the set of units and matters that depend on
        what it changes.
  I1.   A matter states its blast radius, found by following dependencies.
  I2.   Readers per lens follow blast radius, not type: one reader when the blast radius
        is empty, two when it is not.

Sources
  Def.  The sources of a matter are the repository files carrying its proposed
        specification, formal twins and normative dependencies.
  I1.   A matter lists these files in `sources`, each pinned by its sha256;
        discussion is cited in `threads`, check evidence in `runs`, and external
        inspiration under the fidelity rules, without becoming additional scope.
  I2.   At ratification every normative dependency outside the statements introduced
        by this matter is already ratified; this matter's own statements remain
        proposed until its act passes.
  I3.   A matter carries the statements in the sources it pins; ratifying the matter
        ratifies those statements at those hashes, and the pins are covered by A6.
  I4.   The pins are fixed before S1 and verified again before S4; changing the
        proposal or its sources after the attempt begins requires a new attempt.
  I5.   Ratifying a matter does not ratify every utterance in its cited threads or
        make an external reference a governing specification.
  I6.   A library a source imports (README.md, Library) is pinned in `sources` by name,
        version and hash, and the readings of the declarations used are cited in `runs`.

State
  Def.  The state of a matter is the one stage of its life it is in.
  I1.   A matter is in exactly one state: proposed, ratified, executed, rejected,
        challenged, superseded.
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
  I10.  superseded: a challenged matter replaced by a later ratified matter that names
        it; the pointer is the record.
  I11.  Only the operator moves a matter between states.

Vetting
  Def.  Vetting is the reading of a matter under every lens before ratification.
  V1.   Before ratification every matter is read under every lens, each lens by a reader
        that took no part in authoring the matter.
  V2.   A reader takes one lens and receives the matter, not other readings.
  V3.   Each reader's output is written to runs/ as findings or the word none; under Q4
        it is a correspondence reading.
  V4.   A finding under any lens sends the matter back for revision; after revision every
        lens is read again.
  V5.   A matter is ratifiable only after a pass in which no lens found anything.
  V6.   The operator adds readers and never removes lenses.

Lens
  Ref.  README.md, Lens.
  Q1.   The matter's text describes what its sources contain and claim, and records
        how its L1 commitments express the settled discussion cited as provenance.
  Q2.   Nothing is undefined.
  Q3.   The blast radius is as stated.
  Q4.   Correspondence: every twin says what its sentence says.

Correspondence reading
  Ref.  README.md, Correspondence reading.
  I1.   For each twin in the matter's subject it records the reading, the sentence, the
        verdict (same or not same, with the reason), and the exclusion test.
  I2.   The reading is written from the Lean text alone, before the reader sees the
        sentence.
  I3.   The exclusion test names a wrong definition of the term that the sentence rules
        out and says whether the twin rejects it; where the checker can be run on the
        wrong definition, its output is the evidence.
  I4.   The reader took no part in writing the twin or the sentence.
  I5.   Step 1 input contains the complete relevant declarations and needed formal
        context, with sentence-revealing comments removed; that exact input and the
        reading are recorded before step 2 supplies the L1 sentences.
  I6.   Agreement requires matching meaning, not merely absence of contradiction;
        names, dependencies and unrelated true theorems do not fill omissions.

Attempt
  Ref.  README.md, Attempt.
  S1.   Gate: the seven checks of doctrine/statements.md over the subject's statements,
        by a program once one exists and until then by an agent that reads them and says
        so.
  S2.   Checker: check.sh over the subject's Lean files; pass when every file is accepted
        and every level-4 claim's assumption list holds only the three standard
        assumptions; a unit whose required formal representation is unresolved
        cannot pass by having no Lean file.
  S3.   Lenses: Q1 to Q4, each by a fresh reader, readers per lens by blast radius; pass
        when no reader reports a finding.
  S4.   Restatement: the operator writes the restatement (A1, A2); not reached until S1
        to S3 pass.
  S5.   Verification: a fresh agent performs every criterion of the Restatement
        audit (A3, A4); on a pass the matter is ratified (A6).
  I1.   The log is one file, runs/mNNNN-attempt-K.md: the hashes of the files read, then
        each step in order with actor, status, evidence and any findings, then the grade.
  I2.   Every prompt given to a reader is recorded in the log verbatim.
  I3.   K counts from 1 per matter and never repeats.
  I4.   A claim that a check catches a case is accompanied by the check run on that case
        (errors/e0001).
  I5.   An S5 failure closes the attempt as fail; corrections start a new numbered
        attempt at S1 and never reopen the failed log or resume it at S4.
  I6.   The ratification cycle is this attempt, ending in pass or fail; changes to
        L1 or L2 return to discussion outside that cycle, and additional scope
        requires a new matter.
  I7.   The log records the Lean toolchain the checker ran (README.md, Arithmetic I5).

Finding
  Ref.  README.md, Finding.
  I1.   A finding names the step, the lens if any, the location (a statement id, a twin
        name, or a file and line), what differs or fails, and the evidence.
  I2.   A reader's output is findings, or the word none; it is evidence, not a
        statement, and is never rewritten in the language of statements.

Ratification act
  Def.  The ratification act is the sequence A1 to A7 by which the operator ratifies a
        matter by restating it.
  A1.   After S1 to S3 pass, the operator reads the fixed proposal at a commit, with
        each twin's reading beside its sentence, its correspondence reading and its
        discussion provenance available.
  A2.   The operator writes an independent account of the final proposal in their
        own words under ## Restatement, naming that commit, and commits it; the
        account covers its commitments, formal meanings, limits and acceptance.
  A3.   A fresh agent, one that took no part in authoring the matter, verifies the
        restatement against the matter's text and writes the verification to runs/.
  A4.   A restatement passes only when every criterion of the Restatement audit
        passes with the required evidence; an overall impression is insufficient.
  A5.   A failure ends the attempt without ratification; out-of-scope content must
        be removed or pursued in a new matter, never incorporated into the current
        cycle; a corrected account of the existing scope requires a new attempt
        from S1.
  A6.   On a pass, the recording agent writes verified (who, when), ratified_commit
        (the commit named in A2), and ratified_sha256 (the hash of the header's
        sources list and the body minus ## Attempts, ## Restatement, ## Execution),
        and moves the state to ratified.
  A7.   The restatement is the artifact that shows the operator read the text; the pin,
        the pair ratified_commit and ratified_sha256, is recorded after the act, never
        offered before it.

Restatement audit
  Def.  The restatement audit is the fixed, criterion-by-criterion examination of
        L3 against the final proposal and its evidence.
  C1.   Version: does L3 name the commit examined, and do its L1, L2 and source pins
        match the proposal that passed S1 to S3 without a subsequent scope change?
  C2.   Coverage: does L3 account for every L1 commitment and every commitment in
        the matter, including their conditions, dependencies and limits?
  C3.   Formal meaning: does L3 accurately account for every twin and its reading,
        distinguishing a defining body from a theorem's proposition and proof?
  C4.   Calibration: does L3 distinguish proved claims, tested observations and
        human interpretations, preserving the assumptions and limits of each?
  C5.   Correspondence: does L3 account for the correspondence verdicts and
        exclusion tests, including meaning carried by the operator's interpretation
        rather than expressed by the Lean declaration?
  C6.   Continuity: does the meaning settled through workshopping survive through
        the committed L1 and L2 into L3, with relevant discussion passages traced
        to their adopted statements and unresolved differences reported?
  C7.   Independent account: is L3 the operator's own account of the final proposal,
        with evidence of authorship and explanation beyond copying supplied text?
  C8.   Acceptance and scope: does L3 say what the operator accepts, and does every
        substantive claim it makes map to the fixed proposal or its evidence,
        without adding a requirement, definition, exception or promise of work?
  I1.   The verifier records C1 to C8 in order, with pass, fail or not reached for
        each; it stops at the first failure and leaves the others not reached.
  I2.   Each reached criterion records the exact L3 passages, the compared statement
        ids or matter sections, the relevant source or evidence locations, and the
        reason for its verdict; missing coverage names the missing commitment.
  I3.   C2 includes a complete commitment-to-L3 mapping; C3 and C5 map every twin
        and reading; C6 includes discussion-to-L1-to-L2-to-L3 traces; C8 maps L3 claims
        back to the fixed proposal or evidence.
  I4.   A pass requires all eight passes; there is no score, averaging, silent waiver
        or replacement by a general assurance; an unresolved comparison is a fail.
  I5.   Where a criterion has no instances, the verifier states why none are
        required and gives the evidence; an unresolved required twin is not absence
        of an obligation and cannot be treated this way.
  I6.   C6 uses threads as provenance to detect loss or alteration of understanding;
        it does not adopt uncommitted thread content as scope, and any unresolved
        discrepancy fails rather than expanding the current cycle.
  I7.   C7 judges the expressed account and its provenance, not private cognition;
        necessary quotations are allowed but cannot alone satisfy the account.
  I8.   The criterion text is part of the doctrine version used by the attempt;
        changing the audit rules during S5 requires a new attempt.
  Ref.  README.md, Restatement; the record template below.

Channel
  Def.  The channel is the way the operator's rulings reach the repository.
  I1.   The operator's channel is the repository: a committed edit, or a session
        exchange exported verbatim into threads/.
  I2.   Platform comments are not rulings.
  I3.   Every session a matter relies on is exported before the matter is ratified.
  I4.   Every commit after the bootstrap carries a `Matter: mNNNN` trailer.
  I5.   Branch names and pull-request titles are prefixed with the matter id.
  I6.   A pull request merges as a merge commit; its body is a one-line pointer.
  I7.   Thread provenance preserves operator instructions and agreed drafting
        decisions but is not a separate program specification; L1 records the
        commitments offered for acceptance, and L3 cannot add to them.

Evidence
  Ref.  README.md, Evidence.
  I1.   runs/: one file per attempt, plus one per check run or reading it cites; never
        edited; a re-run is a new file.
  I2.   threads/: verbatim operator and agent turns, reasoning and tool traffic
        omitted; never edited.
  I3.   errors/: one file per agent error, id eNNNN; what happened, why as far as
        traceable, the guard added; never edited.
  I4.   An error record cites the run or the thread that shows the error; a failed
        command's text and output are recorded as a run, like any other check.

Determinism
  Def.  Determinism is the rule that whatever a program can check, a program checks.
  I1.   Anything a program can check is checked by a program once one exists: the
        header schema, id uniqueness, transitions, links, hashes, the checker's
        assumption lists, the sources rule, the seven statement checks, the presence
        of a reading and a correspondence reading for every twin.
  I2.   Until the program exists, an agent performs the check and says so in the run
        record.
  I3.   Agents are reserved for judgement; ratification is the operator's alone.

Bootstrap
  Def.  The bootstrap is the period from the first commit until the operator says it is
        complete, during which the doctrine is revised in place.
  I1.   The first commit cannot pass through this process, because the process is not
        in the repository until it lands.
  I2.   The bootstrap is complete when the operator says it is.
  I3.   Until then the first commit is revised on main directly, and each revision says
        so in HANDOFF.md.
  I4.   After the bootstrap, everything enters as a matter.
```

## S5 record template

Use this shape inside the attempt log, with supporting mappings below the
table. The criteria above are binding; this template displays the required
record. These are explicit review criteria, not a claim that prose
correspondence is mechanically decidable.

```text
S5 restatement audit
Matter / attempt:
Candidate commit / source hashes:
Doctrine commit / hash:
Restatement commit / location:
Verifier / date:
Freshness: evidence that the verifier did not author the matter

criterion | status                | L3 passages | comparison evidence | reason / finding
C1        | pass/fail/not reached |             |                     |
C2        | pass/fail/not reached |             |                     |
C3        | pass/fail/not reached |             |                     |
C4        | pass/fail/not reached |             |                     |
C5        | pass/fail/not reached |             |                     |
C6        | pass/fail/not reached |             |                     |
C7        | pass/fail/not reached |             |                     |
C8        | pass/fail/not reached |             |                     |

Commitment coverage: every L1 id and matter commitment -> L3 passage
Twin coverage: every twin and reading -> L3 passage
Continuity: settled discussion passage -> L1 id / L2 reading -> L3 passage
Scope: every substantive L3 claim -> fixed proposal or evidence
Grade: pass only if C1–C8 all pass; otherwise fail
Findings: the Finding shape, including failed criterion and evidence
```

A failed audit is retained as written. Deleting extra scope from a later
restatement does not turn that failed attempt into a pass. The corrected
account begins a new attempt at S1; filing a separate matter for the extra
scope also does not repair the failed attempt.
