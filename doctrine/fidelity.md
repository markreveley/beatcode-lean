# Fidelity to a reference

How a component draws on a book, gen~ or another reference. The current
grounding is Graham Wakefield and Gregory Taylor's *Generating Sound &
Organizing Time*, Chapter 1, in the supplied archive of printed pages
2–18. This document sets the comparison rules; it does not import the
book or gen~ as a governing specification.

```
Fidelity
  Def.  Fidelity is the relationship a component is required to preserve with a
        named reference.
  I1.   The intended use determines the required relationship; closer reproduction
        is not automatically better and no overall parity score is required.
  I2.   Fidelity and evidence strength are separate: choosing an exact relationship
        does not prove it, and a proved property need not reproduce reference bits.
  I3.   The adopted L1 statements specify correctness in full; an external reference
        supplies provenance and comparison evidence, not additional requirements.
  I4.   Each deliberate departure is stated with its reason before ratification;
        an unexpected difference is investigated rather than silently tolerated.
  I5.   Fidelity to gen~ and beatcode's deterministic output requirement are
        separate obligations.

Fidelity relation
  Def.  A fidelity relation states what is preserved and how a comparison decides
        agreement for the component's intended use.
  K1.   Conceptual: the meanings, roles and constructions correspond; the evidence
        is an explicit reading and rationale, not a numerical percentage.
  K2.   Observable behaviour: specified events, values or responses agree under
        the named observations and timing rules.
  K3.   Numerical: differences satisfy a stated error measure and bound over a
        stated input domain and duration.
  K4.   Representation: the specified sample bits or output bytes are identical.
  I1.   A component may require more than one relation; these kinds are not levels
        of evidence or a ladder that every component must climb.
  I2.   A numerical tolerance does not imply agreement of discrete events or
        threshold decisions; those observations need their own requirements.

Fidelity record
  Def.  A fidelity record is the comparison specification and evidence kept in
        the matter that adopts a reference-derived component.
  I1.   It names the reference and its locator: author, title and page for a book;
        version, patch or implementation identity for a program comparison.
  I2.   It states the chosen relations, preserved meanings or behaviour, input
        conditions, observations and agreement rules, including any tolerances.
  I3.   It records deliberate departures and their reasons, and unresolved details.
  I4.   It cites the evidence and its limits: observed cases are not universal
        proof; planned comparisons and unrun tests are not results.
  I5.   A runtime comparison records the relevant configuration, including sample
        rate, initialization and control schedule, and seeds where randomness is used.
  I6.   A definition-only comparison states that no runtime inputs or numeric
        comparisons apply; it does not manufacture a test or an exact-parity claim.

Reference boundary
  Def.  A reference boundary is the portion of external material admitted to the
        current discussion.
  I1.   Missing chapters are not inferred or used to establish the implementation
        direction; additional material enters when the current work needs it and
        the operator has discussed broadening the boundary.
  I2.   The present book boundary is the supplied Chapter 1 pages 2–18; page 1 and
        the later chapters are not in that archive.
  I3.   Needed operator documentation may resolve a present semantic question;
        it does not authorize additional components or future features.
```

For example, a sequencer could require identical selected notes and event
frames while using a different internal phase representation. That is a
possible observable-behaviour requirement, not permission to assume that
the current sequencer exists or that such agreement has been measured.

The first sample-frame proposal uses conceptual fidelity to page 4. Its
formal representation remains unresolved; there is no gen~ execution to
compare yet.
