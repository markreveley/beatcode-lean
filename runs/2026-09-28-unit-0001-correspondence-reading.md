# run · 2026-09-28 · unit 0001 correspondence reading (lens Q4)

Claim tested: for each twin in `units/0001-step/Step.lean` at sha256
672c89d1266423a866752aac82ea662bd787c8eda47a2af367f822f8b026186e, the
twin says what its sentence in `units/0001-step/statements.md` says
(doctrine/matters.md, Lens Q4; Correspondence reading I1–I4). Supports
m0001, did_2.

Procedure: a fresh reader (a language-model agent started with no context
from this session, and forbidden to read the repository) received the Lean
file alone and wrote a reading of each declaration (step 1). It then
received the sentences def_1, attest_1, attest_2 and attest_3, gave a
verdict for each pair, and ran the exclusion test, using the checker where
it could (step 2). The reader took no part in writing the twins or the
sentences. The twins were proposed by the session that commissioned this
reading; that session did not see the reader's step-2 output before it was
written.

Environment: Linux 6.18.44-fc-v42 x86_64; Lean 4.34.1 (commit
5045d0056413266e57c625dcd7c365b10e377c52); test files under a scratch
directory outside the repository, contents reproduced below.

Verdicts: attest_1 / Step: not same. attest_2 / step_first: not same.
attest_3 / step_succ: not same. Under doctrine/matters.md Vetting V4 the
matter returns for revision; the reasons are the reader's, below, verbatim.

## The reader's report (verbatim)

```
PAIR: attest_1 / Step
SENTENCE: the Lean declaration `Step` in ref_1 denotes exactly *step*
READING: Step is declared by `abbrev` as an abbreviation for Nat, the type of natural numbers: the name Step stands for, and unfolds to, Nat. The declaration consists of the name Step and the single identifier Nat as its body, with nothing else.
VERDICT: not same
REASON: The sentence asserts a denotation (that the name Step means *step*: a whole number, counting from zero, naming a position in a sequence), and the Lean states no denotation at all: it states only that Step is a reducible abbreviation for Nat, which the sentence never mentions. Whatever of def_1 Nat happens to satisfy (whole numbers, from zero) comes from Nat's own definition rather than from anything written in the abbrev, and "naming a position in a sequence" has no counterpart in the Lean text.
EXCLUSION TEST: wrong definition: *step* is a whole number, counting from zero, naming a quantity (a count of things) rather than a position in a sequence; twin rejects it: no; because: the twin that definition would get is `abbrev Count := Nat`, and the checker identifies it with Step by `rfl` (it reports the type of `rfl : Step = Count` as `Step = Step`), so nothing in the abbrev selects "position" over "quantity"; the abbrev does fix the carrier as Nat (which is why `0 : Step` and `s < s + 1` check, so a bounded, negative or non-numeric wrong definition would not match it), but that discrimination is Nat's, not anything the abbrev states.
EVIDENCE:
--- file: pair1_step.lean ---
-- attest_1 / Step. Wrong definition: *step* is a whole number counting from zero
-- naming a QUANTITY (a count of things), not a position in a sequence.
abbrev Step := Nat        -- the twin, as written in the unit
abbrev Count := Nat       -- the twin that the "count" definition would get
#check (rfl : Step = Count)
-- what the abbrev does fix: Step is Nat, so 0 is a Step and s + 1 is a larger Step
example : Step := 0
example (s : Step) : s < s + 1 := Nat.lt_succ_self s
--- command ---
lean pair1_step.lean
--- output (verbatim; exit status 0 reported by the shell) ---
rfl : Step = Step
```

```
PAIR: attest_2 / step_first
SENTENCE: the first *step* is step 0, not step 1
READING: For every s of type Step, zero is less than or equal to s. The zero is written as the bare numeral 0, with no explicit (0 : Step) ascription in the text.
VERDICT: not same
REASON: The theorem states that 0 is a lower bound of every Step (and its typing requires 0 to be a Step), which is the "first step is step 0" claim read as "0 is least under ≤". It never mentions 1 and does not state 0 ≠ 1, so the sentence's "not step 1" clause is not stated by the twin; that clause, and the uniqueness in "the first", hold only because Step is Nat, which the theorem uses but does not assert.
EXCLUSION TEST: wrong definition: *step* is a whole number counting from one (1, 2, 3, …), so the first step is step 1; twin rejects it: yes; because: with Step the type of naturals ≥ 1 (an LE instance is supplied so that only the numeral is at issue) the statement `0 ≤ s` fails to state: the checker cannot synthesize `OfNat Step 0`, i.e. 0 is not a step of that type; the same file also checks a second wrong type, Int (negatives included, so no first step), for which the statement is provably false: its negation `¬ ∀ s : Step, 0 ≤ s` is proved with witness -1 and depends on no axioms.
EVIDENCE:
--- file: pair2_step_first.lean ---
-- attest_2 / step_first. Wrong definition: *step* is a whole number counting
-- from ONE (1, 2, 3, ...): the first step is step 1.
abbrev Step := { n : Nat // 1 ≤ n }
instance : LE Step := ⟨fun a b => a.val ≤ b.val⟩
theorem step_first (s : Step) : 0 ≤ s := sorry

-- Second wrong type, checked in the same file: any integer, negatives included.
namespace IntCase
abbrev Step := Int
theorem step_first_false : ¬ ∀ s : Step, 0 ≤ s := fun h => absurd (h (-1)) (by decide)
#print axioms step_first_false
end IntCase
--- command ---
lean pair2_step_first.lean
--- output (verbatim; exit status 1 reported by the shell) ---
pair2_step_first.lean:5:32: error(lean.synthInstanceFailed): failed to synthesize instance of type class
  OfNat Step 0
numerals are polymorphic in Lean, but the numeral `0` cannot be used in a context where the expected type is
  Step
due to the absence of the instance above

Hint: Type class instance resolution failures can be inspected with the `set_option trace.Meta.synthInstance true` command.
'IntCase.step_first_false' does not depend on any axioms
```

```
PAIR: attest_3 / step_succ
SENTENCE: a *step* has no upper bound: every step has a next step
READING: For every s of type Step, there exists a t of type Step such that s is less than t. In the proof term, the witness supplied for t is s + 1, justified by Nat.lt_succ_self s.
VERDICT: not same
REASON: "No upper bound" is what the statement says: every s has a strictly greater t, so no step is a maximum, which for Nat's total order is the same as having no upper bound inside Step. "Every step has a next step" says more: a next step is an immediate successor, whereas the statement only says some later step exists and would hold just as well for a dense order with no next elements. The witness s + 1, which would be the next step, appears only in the proof term, not in the statement.
EXCLUSION TEST: wrong definition: *step* is a whole number with a largest value (a fixed-width representation, 0 … 255); twin rejects it: yes; because: with Step := Fin 256 the statement `∀ s : Step, ∃ t : Step, s < t` is false: its negation is proved both by `decide` and directly (255 is a Step and no Step exceeds it); the twin would not, however, reject a dense wrong definition (always a later step, never a next one), which only the sentence's "next step" rules out.
EVIDENCE:
--- first run (same file path, earlier contents) ---
-- attest_3 / step_succ. Wrong definition: *step* is a whole number with a
-- largest value (a fixed-width representation, 0 ... 255).
abbrev Step := Fin 256
theorem step_succ_false : ¬ ∀ s : Step, ∃ t : Step, s < t := by decide
#print axioms step_succ_false
--- command ---
lean pair3_step_succ.lean
--- output (verbatim; exit status 1 reported by the shell) ---
pair3_step_succ.lean:4:64: error: maximum recursion depth has been reached
use `set_option maxRecDepth <num>` to increase limit
use `set_option diagnostics true` to get diagnostic information
'step_succ_false' depends on axioms: [sorryAx]
--- three trial files then run and deleted (each: exit status 0): trial3a.lean = the direct proof now in the final file, output "'step_succ_false' depends on axioms: [propext]"; trial3b.lean = the decide proof with set_option maxRecDepth 100000 now in the final file, output "'step_succ_false' depends on axioms: [propext, Quot.sound]"; trial3c.lean = the same decide proof with abbrev Step := Fin 16 and no option, output "'step_succ_false' depends on axioms: [propext, Quot.sound]" ---
--- final file: pair3_step_succ.lean ---
-- attest_3 / step_succ. Wrong definition: *step* is a whole number with a
-- largest value (a fixed-width representation, 0 ... 255).
abbrev Step := Fin 256
-- negation of the twin's statement, decided by enumeration
set_option maxRecDepth 100000 in
theorem step_succ_false : ¬ ∀ s : Step, ∃ t : Step, s < t := by decide
#print axioms step_succ_false
-- the same negation, proved directly: 255 is a Step with nothing above it
theorem step_succ_false' : ¬ ∀ s : Step, ∃ t : Step, s < t := fun h =>
  match h 255 with
  | ⟨t, ht⟩ => absurd ht (Nat.not_lt.mpr (Nat.le_of_lt_succ t.isLt))
#print axioms step_succ_false'
--- command ---
lean pair3_step_succ.lean
--- output (verbatim; exit status 0 reported by the shell) ---
'step_succ_false' depends on axioms: [propext, Quot.sound]
'step_succ_false'' depends on axioms: [propext]
```

READER: fresh; received the Lean file alone in step 1 and the sentences in step 2; took no part in writing either.

## Recorded by

claude-code/2026-09-28, the commissioning session. Only the header of this
file and the paths in the evidence blocks (shortened to file names) are its
words; the report is the reader's, unaltered. Append-only.
