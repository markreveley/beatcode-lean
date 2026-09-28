/-!
# unit 0001 · step

def_1 *step*: a whole number, counting from zero, naming a position in a sequence.
(operator-authored; see threads/2026-09-27-ratification-of-step.md)

This file is the formal twin of def_1 and nothing more. The assertion that
`Step` denotes exactly *step* (attest_1) is a proposal awaiting the
operator's act: the checker can confirm this file is well-formed, it cannot
confirm that a name means what a sentence says.

Two decisions the definition carries, each made checkable below:
- steps start at zero, not one;
- steps have no upper bound (a fixed-width representation would cap them;
  this definition does not).
-/

/-- A position in a sequence: a natural number, counting from zero. -/
abbrev Step := Nat

/-- The first step exists and is zero. -/
theorem step_first : (0 : Step) = 0 := rfl

/-- Every step has a next step: there is no upper bound. -/
theorem step_succ (s : Step) : ∃ t : Step, t = s + 1 := ⟨s + 1, rfl⟩

#print axioms step_first
#print axioms step_succ
