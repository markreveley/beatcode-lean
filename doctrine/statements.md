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
  I1.   In a unit's statements and in a matter, a term is written between single
        asterisks, and a word so written is a use of a term and nothing else.
  I2.   In README.md and doctrine/ a block's name is a term, used without asterisks; a
        block's name used elsewhere in the doctrine in its ordinary English sense is a
        plain word.
  I3.   A word between single asterisks inside a doctrine block is a use of a term
        defined in a unit or under a Def. line, in that definition's sense.
  I4.   Every term used has a definition in scope.
  I5.   Emphasis is never written with asterisks.

Scope
  Def.  The scope of a text is the set of definitions it may use.
  I1.   For a unit: its own definitions, those of the units it depends on, and those of
        README.md.
  I2.   For README.md and doctrine/: those of README.md, of doctrine/, and of every unit
        that exists.
  I3.   For a matter: the scope of its subject.

Authorship
  Def.  Authorship is who wrote a statement and which state it is in.
  I1.   Each statement records its author: operator or model.
  I2.   Each statement records its state: proposed or ratified.
  I3.   An operator-authored statement is ratified on entry.
  I4.   A model-authored statement is proposed until the matter carrying it is ratified.
  I5.   Only the operator changes a state.

Formal twin
  Ref.  README.md, Formal twin.
  I1.   A definition, an assertion or a consequence may name its formal twin: a Lean declaration in a file given as a source.
  I2.   The assertion that the twin means the sentence is a separate, model-authored statement.
  I3.   That assertion is what the operator is asked to ratify.
  I4.   A statement that names a twin carries the twin's reading, and names the correspondence reading in runs/ that produced it.
  I5.   The reading is written from the Lean text alone, before its writer sees the sentence, by a reader who took no part in writing the twin.

Unit file
  Def.  A unit file is the file that holds a unit's statements.
  I1.   A unit's statements are one file, units/NNNN-name/statements.md, with a YAML
        header: unit, title, rung, level, checks.
  I2.   Each statement is one line: ⊢ if ratified, then [id](deps), then the sentence.
  I3.   Each statement is followed by a brace block {author · state · notes}: author is
        operator or model; state is proposed or ratified; the notes may name an origin (a
        threads/ file), a formal twin (a declaration in a source file), a reading
        (verbatim, with the attempt that produced it), evidence (a runs/ file), and
        revisions.
  I4.   The file ends with a table, "What each check settled": one row per check that
        ran, what it settled and what it did not.
  I5.   A unit file's records are the check runs its level rests on; the outcome of an
        attempt is recorded in the matter and in runs/, never as a statement in the
        unit file.

Gate
  Def.  The gate is the program that performs the checks below on a unit's statements.
  C1.   Every id is of the form kind_n and unique in the unit.
  C2.   Every dependency resolves.
  C3.   Every *term* has a definition in scope.
  C4.   Every source carries a hash that matches the file.
  C5.   No model-authored statement is marked ratified.
  C6.   If a statement's sentence quantifies (every, any, all, each, no, always, never) and it names a twin, the twin's proposition, the part before :=, binds at least one variable.
  C7.   A twin whose proof uses nothing but rfl and constructor applications is flagged for the correspondence reading, not rejected: such a proof is right for a specific computed value and empty for a rule.
  Now.  No gate program exists. The seven checks are performed by an agent that reads
        the statements, and the matter carrying the unit says so. Building the gate is
        PLAN.md item 0a.
```
