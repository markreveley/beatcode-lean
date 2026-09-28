# Statements

The rules for the plain-language layer. Terms are defined in
[README.md](../README.md).

```
Kind
  Def.  A kind is what a statement does. There are five.
  K1.   definition  [def_n]     coins a term written *term*; carries the defining sentence.
  K2.   source      [ref_n]     points at a file; carries its path in this repository and its sha256.
  K3.   assertion   [attest_n]  says something holds; carries the sentence.
  K4.   consequence [infer_n]   says something follows from its dependencies; carries the sentence and at least one dependency.
  K5.   record      [did_n]     says something was done; carries what, when, and where the evidence is.

Dependency
  Def.  A dependency is a statement another statement rests on.
  I1.   Dependencies are written as ids in parentheses after the statement's id: [attest_1](def_1, ref_1).
  I2.   Every listed id exists in the same unit or in a ratified unit this unit depends on.
  I3.   Dependencies form no cycles.

Term
  Def.  A term is a word or phrase coined by a definition.
  I1.   Inside a sentence, *word* is a use of a term and nothing else.
  I2.   Every term used has a definition in scope.
  I3.   Emphasis is never written with asterisks.

Authorship
  I1.   Each statement records its author: operator or model.
  I2.   Each statement records its state: proposed or ratified.
  I3.   An operator-authored statement is ratified on entry.
  I4.   A model-authored statement is proposed until the matter carrying it is ratified.
  I5.   Only the operator changes a state.

Formal twin
  I1.   A definition or a consequence may name its formal twin: a Lean declaration in a file given as a source.
  I2.   The assertion that the twin means the sentence is a separate, model-authored statement.
  I3.   That assertion is what the operator is asked to ratify.

Gate
  Def.  The gate is the program that performs the five checks below on a unit's statements.
  C1.   Every id is of the form kind_n and unique in the unit.
  C2.   Every dependency resolves.
  C3.   Every *term* has a definition in scope.
  C4.   Every source carries a hash that matches the file.
  C5.   No model-authored statement is marked ratified.
  Now.  No gate program exists. The checks are performed by reading, and the matter
        carrying the unit says so. Building the gate is PLAN.md item 0a.
```
