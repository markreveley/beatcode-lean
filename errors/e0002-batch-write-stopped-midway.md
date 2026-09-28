# e0002 · 2026-09-28 · a batch edit stopped midway and the partial state was committed

What happened: in bootstrap revision 7, part 4, one script edited five
files in sequence, writing each as it went. On the fifth, the matter, an
assertion on the text to replace failed and the script stopped. The four
files already written were consistent with the new rules; the matter was
not. The commit and push ran in the same command as the script, so the
failure did not stop them, and the inconsistent state was pushed as part
4. The agent noticed from the script's error output, completed the matter,
and pushed part 4b.

Why, as far as traceable: the script did not verify every replacement
before writing any file, and the commit was chained to the edit instead
of being run after a check.

Downstream effect: one pushed commit in which the matter contradicted the
doctrine for a few minutes. No reader read that state: attempt 5's readers
started after part 4b. Nothing depended on it.

Whose responsibility: the agent's. Not at the operator's seam.

Guard added: HANDOFF.md, what the next agent may not do: a script that
edits several files verifies every edit before writing any, and a commit
never runs in the same command as an edit that can fail.

Detected by: the agent, from the script's own error output. Actor:
claude-code/2026-09-28. Never edited.
