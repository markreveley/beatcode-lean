/-!
# unit 0001 · step

def_1 *step*: a whole number, counting from zero, naming a position in a sequence.
(operator-authored, 2026-09-27 — see threads/2026-09-27-ratification-of-step.md)

This file is the formal twin of def_1 and nothing more. The bridge
statement attest_1 ("`Step` denotes exactly *step*") is a proposal
awaiting the operator's act; the kernel can check that this file is
well-formed, it cannot check that the name means what the sentence says.

Decisions the definition carries (both confirmed by the operator):
- steps start at zero, not one (`0 : Step` is the first position);
- steps have no upper bound (the reference implementation caps at 64 bits;
  this is the first deliberate divergence from beatcode v0.1).
-/

/-- A position in a sequence: a natural number, counting from zero. -/
abbrev Step := Nat

/-- The first step exists and is zero (decision 1 made checkable). -/
theorem step_first : (0 : Step) = 0 := rfl

/-- Every step has a next step (decision 2 made checkable: no upper bound). -/
theorem step_succ (s : Step) : ∃ t : Step, t = s + 1 := ⟨s + 1, rfl⟩

#print axioms step_first
#print axioms step_succ
