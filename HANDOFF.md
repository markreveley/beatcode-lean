# Handoff

> Advisory, not normative. Verify repository state before acting; the
> matters supply scope. Nothing `proposed` governs.

## This revision

The operator authorized drafting a bootstrap revision in the session
exported as
[threads/2026-09-29-direction-arithmetic-session.md](threads/2026-09-29-direction-arithmetic-session.md),
then instructed the commit. It is commit `ea3fa36` on branch
`claude/eager-dijkstra-titub3`, whose parent is `eea63b4`, the head of
`origin/main` at the time, followed by one commit that adds the export
of the turns after it. On the operator's instruction "push to main",
the branch was merged with `b86770e`, which had landed on `main` in the
meantime, and pushed to `main`, so `main` now stands at this revision
(Bootstrap I3). The operator's rulings on the text remain open; a ruling
that changes the text is a further revision. Every commit was made in a
separate command from every edit (errors/e0002).

What the revision changes:

- README.md: a Direction paragraph; Trusted list I2; two new blocks,
  Arithmetic and Library; the Now lines of the top block and the Ladder.
- doctrine/fidelity.md: Fidelity I6; the reference boundary names the book
  repository and the gen~ documentation pages read.
- doctrine/matters.md: Sources I6 and Attempt I7.
- PLAN.md: unit candidates in the reference's order, and process
  candidates 0f and 0g; nothing adopted.
- errors/e0004-toolchain-capability-asserted-from-memory.md: a new error
  record.
- threads/2026-09-29-direction-arithmetic-session.md: the session export.
- threads/2026-09-29-direction-arithmetic-session-2.md: the turns after
  the commit, added in the second commit.
- This file.

Unchanged: the unit file, the matter, check.sh, lean-toolchain, and every
existing file in runs/, threads/ and errors/. The matter's source hash
still matches the unit file.

Checks run before the commit (2026-09-29): every local Markdown link in
the current documents resolves; the matter's source hash matches its unit
file; `git diff --check` passes; the 26 pre-existing evidence files are
byte-for-byte unchanged; every code block in README.md and doctrine/ is
closed. These are document-maintenance checks, not an attempt.

What is needed from the operator:

1. Compare the commit with `eea63b4`, in particular the two new README
   blocks and Fidelity I6, and rule: keep, reword, or strike each line.
2. Say whether the gen~ documentation pages are admitted to the reference
   boundary as drafted, or only the reference pages without the tutorials.
3. Nothing further for publication: the revision is on `main`.

## Current direction

The reference's model of computation is what this repository formalizes.
The session export above records the discussion. In short: a patch is a
wiring diagram with no loops; every sample frame the whole diagram is
evaluated once; a value crosses to the next sample frame only through an
explicit memory operator; every value is one kind of number. gen~ is
tested by use and trusted, never proved; it is a reference under
doctrine/fidelity.md, and agreement with it is evidence at level 3 at
most (Fidelity I6). The framework is bespoke; the signal processing is
not. The book's order of components is the candidate order of units in
PLAN.md, none adopted.

Two arithmetic rules are now doctrine (README.md, Arithmetic): counting is
exact and integer; floats go only through the operations Lean's logical
float model defines, with no platform math library. The reason is in the
export: Lean 4.33.0 (2026-08-10) gave Float a model the kernel reads,
which the pinned toolchain 4.34.1 carries, and the operations the model
does not define are exactly the ones whose results differ across
machines. Floor, rounding and the transcendental functions are not
modeled yet. The Lean reference manual's own statement of the trust
assumption is recorded as Trusted list I2.

The bootstrap remains open. The earlier goal is still to lock the final
bootstrap and port its final state as the initial commit of
`beatcode-lean-2`. No final-bootstrap declaration, tag choice or evidence
migration decision is recorded. Discuss new work before acting; reading
and reporting are permitted.

## Unit 0001 now

[m0001](matters/m0001-unit-0001-sample-frame.md) is still proposed. Its
[unit](units/0001-sample-frame/statements.md) has one proposed statement:

> A sample frame is one discrete update of the signal-processing system.

Codex proposed the wording; the operator agreed to it. L2, the
correspondence reading, the connecting assertion, rung and evidence level
are unresolved. L3 has not been reached. No Lean check, correspondence
reading or ratification attempt has run on this revision.

The documentation read this session gives the sentence a candidate reading
to discuss, not a representation: one synchronous evaluation of the
loop-free patch, with history values advancing. The book uses the term in
three further senses the sentence does not carry: a division of time with
a rate, a count of elapsed frames, and a successor relation between
frames. The session export records the passages. Do not silently
substitute a frame index or a Nat alias; the choice is the next
discussion.

The book is Wakefield and Taylor's *Generating Sound & Organizing Time*,
Thinking with gen~ — Book 1. Chapter 1, printed pages 2–18, is in the
repository `markreveley/gen-time-sound` at commit
`addd12d5bbf50402399dc122272e2a3f7aa33ebd`, as photographs with OCR
transcriptions and a manifest of photo hashes. Page 4 is the current
conceptual reference; its transcription was checked against the page
image this session. Page 1 and the page 4 footnotes are not in the
archive. The operator intends to add the remaining chapters; each enters
the boundary when discussed.

## Historical evidence

Commit `339d68a` recorded the previous bootstrap revision: the revised
layers and authorship rule, the explicit L3 audit, the fidelity doctrine,
discussion provenance, and the sample-frame-only m0001; `eea63b4` recorded
its publication. The closing exchange of that publication is preserved in
[threads/2026-09-29-publication-close.md](threads/2026-09-29-publication-close.md),
which landed on `main` as `b86770e` while this revision was being drafted
and is merged here. The baseline before that is
`431709fcccaa12f2379f331cacbef8b4c07634be`, which retains the former
`matters/m0001-unit-0001-step.md`, `units/0001-step/`, the old roadmap,
and the longer handoff with the founding-session history. Replacing the
still-proposed subject did not transfer its earlier statements or passes
to sample frame.

Existing `threads/`, `runs/` and `errors/` records remain unchanged.
Attempts 1–7 record failures. Attempt 8 is recorded as open at S4; its
Q4 first input contained the prose in Lean comments, so its pass is not
evidence of a blind reading. Preserve the log as recorded. No new attempt
has been made; if one is run here, its number is 9 and it begins at S1
after the proposal is ready.

`check.sh` retains the fix to stop on the first Lean failure
([runs/2026-09-28-checker-stop-on-failure.md](runs/2026-09-28-checker-stop-on-failure.md)).
It prints the Lean version, which Attempt I7 now requires the log to
carry. Lean is not installed in every session; the wrapper has not been
run on this prose-only draft, which has no Lean file.

## Decisions still open

- The formal representation of sample frame, and any ambiguity it reveals;
  then its rung and evidence classification.
- Whether the tutorials among the documentation pages stay in the
  reference boundary or only the reference pages do.
- The toolchain upgrade policy: Lean releases monthly and the float model
  grows with each release; an upgrade changes what the checker reads and
  is a recorded event, never a silent bump.
- Whether and when a proved float library (FloatSpec, FloatLib) is adopted
  under README.md, Library; not before a unit needs a theorem about
  closeness to a real-number function.
- The founding defaults not yet resolved: readers per lens by blast
  radius, the bounded rule for terms versus plain words, placement of
  attempt outcomes, the boundary between doctrine blocks and commentary.
- Whether full agent transcripts beyond the required prompts, reports and
  cited evidence are retained, and where.
- The final-bootstrap tag and which runs and threads travel to the new
  repository.

## Guardrails for the next agent

- Discuss new work before acting; apply the operator's current
  authorization to the work actually agreed.
- Do not ratify, supply the operator's L3 account, or write verification
  and ratification fields without the required operator act and passing
  fresh audit. A matter's author cannot act as its fresh verifier.
- Preserve existing evidence; re-runs produce new records. Record exact
  reader inputs, reports and supporting check evidence as required.
- Obtain a formal reading before showing its reader L1. A reader cannot
  read a twin it wrote as a fresh correspondence check.
- Do not claim a check catches a case without running it on that case
  (errors/e0001). Do not contradict a stated rule without identifying
  the conflict for resolution (errors/e0003).
- Do not assert what the pinned toolchain can or cannot do from memory;
  cite that version's documentation or run it (errors/e0004).
- Verify edits before committing; do not combine a fallible edit and
  a commit in one shell command (errors/e0002).
- No definition calls the platform's math library, and no float claim is
  closed by native evaluation (README.md, Arithmetic).
- A library's declarations get readings before anything depends on them
  (README.md, Library).
- Start no dependent unit before its dependencies are executed, and
  raise no evidence level without the evidence it requires.
- External material may ground discussion under the fidelity doctrine;
  adopted rules and behaviour remain specified in this repository.
