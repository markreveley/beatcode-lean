# e0004 · 2026-09-29 · a toolchain capability was asserted from memory

What happened: in the direction discussion the agent told the operator
that Lean's kernel knows nothing about float arithmetic, so a claim about
floats could reach level 3 at most. That was true through Lean 4.32. Lean
4.33.0, released 2026-08-10, gave Float a logical model the kernel reads,
and the repository's pinned toolchain, 4.34.1, carries it. The operator
asked for a search on the point; the agent found the release notes and
the reference manual and corrected the claim in its next reply.

Why, as far as traceable: the agent described the pinned toolchain from
training knowledge instead of from that toolchain's own documentation,
which it had not read. The pin in lean-toolchain was in front of it.

Downstream effect: none in the repository. The claim was made in
conversation and corrected before any text rested on it. Had it stood,
the arithmetic rule drafted in this revision would have confined the
signal-processing core to exact arithmetic for a reason that no longer
holds, and float components would have been planned at level 3 that can
be planned at level 4.

Whose responsibility: the agent's. Not at the operator's seam.

Guard added: HANDOFF.md, guardrails: a claim about what the pinned
toolchain can or cannot do cites that version's documentation or a run on
it, as Attempt I4 requires for a claim about a check.

Detected by: the operator, who recalled a recent change and asked for a
search. The exchange is in
threads/2026-09-29-direction-arithmetic-session.md. Actor:
claude-code/2026-09-29. Never edited.
