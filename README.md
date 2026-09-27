# beatcode-lean

A restart of [beatcode](https://github.com/markreveley/beatcode) — an
offline, deterministic music compiler — built one *unit* at a time, where
every unit is a set of statements a human has read and ratified, a formal
twin the Lean kernel has checked, and a declared place on the verification
spectrum. The code is downstream of all three. Nothing enters without an
operator act.

Origin: the research spike in beatcode's
[`docs/lean-spec-first-research.md`](https://github.com/markreveley/beatcode/blob/4bec77d3d7f8f3a4010e0dbc8853107626b991ed/docs/lean-spec-first-research.md)
and the methodology derived from it in the same session
([`analysis/2026-09-27-origin.md`](analysis/2026-09-27-origin.md)).

## The methodology in one page

**Three checkers, each responsible for one thing.**

| checker | what it settles | what it cannot settle |
|---|---|---|
| the **gate** ([socrates](https://github.com/markreveley/socrates), a deterministic program) | the statements are well-formed: dependencies resolve, every term is defined, sources are hashed | whether any statement is true |
| the **kernel** (Lean 4, a small trusted proof checker with an independent re-implementation, `leanchecker`) | the formal twin is true for all inputs, from nothing but the standard axioms | whether the formal twin says what the prose says |
| the **operator** (a human, through the [rtr](https://github.com/markreveley/rtr) ratification act) | that the prose and the formal twin mean the same thing | nothing further — this is the irreducible human act |

**Two grains, one act.** A *statement* (socrates: `def`, `ref`, `attest`,
`infer`, `act`, `did`) is the unit of dependency — what other statements
rest on. A *matter* (rtr) is the unit of change — the vehicle that carries
statements from proposed to ratified, with a pin (commit + hash) and an
evidence trail. The operator ratifies a matter over exact text at a commit
they name; that one act ratifies every statement it carries. Ratification
is publication: a ratified statement is never demoted, only challenged
with its dependents warned.

**Four labels.** Every unit declares which evidence exists for it, and CI
(when installed) enforces the declaration rather than the intent:

- **proved** — a rule covering every input, accepted by the kernel with only
  `propext`, `Classical.choice`, `Quot.sound`. A theorem that lists a
  `<name>._native.…` axiom trusts Lean's compiler and is not proved.
- **tested against a model** — a separate, simpler definition is the
  meaning; the real code is run against it on random inputs; the written
  rule decides every disagreement.
- **tested against examples** — a fixed list of inputs with known outputs
  (what beatcode v0.1 has today).
- **trusted** — nothing checks it; the list of such things is read, so you
  know what you are trusting.

**The ladder.** Units are added in order of the obligation each introduces:

1. a coined term on top of the trusted base — operator judgement only
   (this is unit 0001: *step*);
2. a term with a bridge to its formal twin — the seam appears;
3. a claim with an "always" in it — the kernel appears; the first proved
   rule (*pulses* and its periodicity);
4. a second way of computing the same thing (a running counter versus the
   index) — the first refinement proof; the first time code becomes
   ephemeral;
5. a claim about seconds (period from tempo) — the first unit that lands on
   "tested" rather than "proved"; the spectrum appears.

**Why the floor is one word.** A commitment is the smallest thing another
statement can depend on. Underneath *step* is Lean's `Nat`, which is not
ours to ratify; the first term coined on top of the trusted base is the
floor, and ratifying it exercises the whole protocol with the least
possible content and the one act that is the human's alone fully exposed.

## Layout

```
units/NNNN-name/   statements.md (socrates render, rung, label) + *.lean (formal twins)
matters/           rtr matters, one per change, flat; ratification lives here
runs/              append-only evidence records (kernel checks, differential runs)
threads/           verbatim session exports; the operator's rulings, citable
analysis/          how we got here; explanatory, non-normative
check.sh           runs the kernel over every unit and prints the trust marker
lean-toolchain     the pinned Lean version (4.34.1)
ROADMAP.md         the next units, and the decision each forces
HANDOFF.md         what the next agent may and may not do
```

## Running the check

```
LEAN_BIN=/path/to/lean-4.34.1/bin ./check.sh
```

No Mathlib, no lake, no network. A unit labelled `proved` must print only
the standard axioms (or none) for every theorem.

## Pins

Adopted by reference at these commits; a change to either is a matter here:

- rtr `9d863092bde37761b2d54b6a41e9a27c8145e0d1` — `doctrine/matters.md`
- socrates `6997c8e119e7fa7be469b0792a633ad01152004f` — `spec/loadout-v0.md`
- beatcode `4bec77d3d7f8f3a4010e0dbc8853107626b991ed` — the reference
  implementation and the spike this repository descends from
