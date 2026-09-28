# Statements

The rules for the plain-language layer. Every unit's `statements.md` follows
them. A program that checks these rules mechanically (the *gate*) does not
exist in this repository yet; until it does, the checks are performed by
reading, and the matter carrying a unit says so.

## Kinds

| kind | notation | what it does | what it must carry |
|---|---|---|---|
| definition | `[def_n]` | coins a term | the term, written `*term*`; the sentence defining it |
| source | `[ref_n]` | points at a file | the path in this repository and the file's sha256 |
| assertion | `[attest_n]` | says something holds | the sentence |
| consequence | `[infer_n]` | says something follows from its dependencies | the sentence; at least one dependency |
| record | `[did_n]` | says something was done | what, when, and where the evidence is |

## Dependencies

A statement lists the ids of the statements it rests on, in parentheses
after its id: `[attest_1](def_1, ref_1)`. Every listed id must exist in the
same unit or in a ratified unit this unit depends on. Dependencies form no
cycles.

## Terms

Inside a sentence, `*word*` is a use of a coined term and nothing else. Every
term used must have a definition in scope. Emphasis is never written with
asterisks.

## Authorship and state

Each statement records its author, `operator` or `model`, and its state,
`proposed` or `ratified`. An operator-authored statement is ratified on
entry. A model-authored statement is proposed until the operator ratifies
the matter that carries it. Only the operator changes a state.

## Formal twins

A definition or a consequence may name its formal twin: a Lean declaration
in a file in this repository, given as a source statement. The assertion
that the twin means the sentence is a separate statement, model-authored,
and is the thing the operator is asked to ratify.

## The checks (performed by reading until a gate exists)

1. every id is of the form `kind_n` and unique in the unit;
2. every dependency resolves;
3. every `*term*` has a definition in scope;
4. every source carries a hash that matches the file;
5. no model-authored statement is marked ratified.
