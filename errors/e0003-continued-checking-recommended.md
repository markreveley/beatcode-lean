# e0003 · 2026-09-28 · continued checking was recommended after failure

What happened: while discussing a defect in check.sh, Codex recommended
retaining any failure and returning a nonzero status after checking all
files. The operator asked why the wrapper should not stop at the first
failure. The agent then acknowledged that stopping matches README.md,
Attempt I1, and that collecting further diagnostics was not required.
The recommendation and correction are recorded verbatim in
threads/2026-09-28-checker-failure-discussion.md.

Why, as far as traceable: the recommendation introduced continued checking
without reconciling it with the stated stop-at-first-failure rule. The
agent had already read that rule. No further cause is established by the
conversation record.

Downstream effect: the recommendation was corrected before implementation.
The operator had to identify the unnecessary behavior. The separate,
existing wrapper defect was that Lean's exit code was printed but not
propagated; a rejected file could be followed by more checks and an
overall exit status of 0. The controlled reproduction and correction are
recorded in runs/2026-09-28-checker-stop-on-failure.md.

Whose responsibility: the recommending agent's. This record does not
attribute the original wrapper defect to that agent.

Guard added: HANDOFF.md requires an agent proposing behavior that conflicts
with a stated rule to identify the conflict and seek the operator's ruling.
The corrected check.sh reports the failed file and exits with its failure
code before checking another file. The cited run verifies first-file and
second-file failures as well as the all-success path with real Lean 4.34.1.

Detected by: the operator, in the cited exchange. Actor: Codex/2026-09-28.
Never edited.
