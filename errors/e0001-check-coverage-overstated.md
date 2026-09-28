# e0001 · 2026-09-28 · a check's coverage was overstated

What happened: in the revision-6 session the agent told the operator that
the two new gate checks, C6 and C7, "would have flagged both twins in unit
0001" as they stood before revision 6. C6 (a quantified sentence needs a
twin that binds a variable) would not have flagged the old `step_succ`,
because that theorem did bind a variable. Only C7 catches it, and only in
the form written afterwards ("a proof using nothing but rfl and
constructor applications"); the form the agent had in mind when it made
the claim was "rfl alone", which the old proof `⟨s + 1, rfl⟩` is not.

Why, as far as traceable: the agent asserted what a rule covers from the
rule's intent, without running the rule against the case it was claiming
to cover. The claim was made in conversation, not in a repository file,
and was corrected by the same agent before the doctrine was committed.

Downstream effect: none in the repository. No gate program runs yet, and
the corrected C7 is what the doctrine carries. Had the claim gone
uncorrected, the operator would have believed a mechanical check covered a
case it did not, and would have read less carefully there.

Whose responsibility: the agent's. This is not at the operator's seam; it
is an agent describing its own tooling inaccurately.

Guard added: doctrine/matters.md, Attempt I4: a claim that a check catches
a case is accompanied by the check run on that case. The correspondence
reader's practice of running the checker on each wrong definition is the
model.

Detected by: the agent, on re-reading its claim while writing the doctrine
text. Actor: claude-code/2026-09-28. Never edited.
