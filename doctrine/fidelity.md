# Fidelity to a reference

How a component draws on a book, gen~ or another reference. The current
grounding is Graham Wakefield and Gregory Taylor's *Generating Sound &
Organizing Time*, Chapter 1, printed pages 2–18, held as photographs and
transcriptions in the repository named under Reference boundary, and the
gen~ documentation pages listed there. This document sets the comparison
rules; it does not import the book, the documentation or gen~ as a
governing specification.

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
  I6.   A reference implementation, however widely used, is tested and trusted, never
        proved; agreement with it is evidence at level 3 at most.

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
  I2.   The present book boundary is Chapter 1, printed pages 2–18, in the repository
        markreveley/gen-time-sound at commit addd12d5bbf50402399dc122272e2a3f7aa33ebd,
        whose manifest.csv holds the sha256 of each page's photograph; page 1, the
        footnotes and the later chapters are not in it.
  I3.   Needed operator documentation may resolve a present semantic question;
        it does not authorize additional components or future features.
  I4.   The present documentation boundary is the Cycling '74 gen~ pages listed below
        this block, read 2026-09-29; the reference pages fix operator meaning, and the
        tutorials are cited as tutorials.
```

For example, a sequencer could require identical selected notes and event
frames while using a different internal phase representation. That is a
possible observable-behaviour requirement, not permission to assume that
the current sequencer exists or that such agreement has been measured.

The documentation pages in the boundary are Max 8 documentation (the
pages say v8.6.5) and Cycling '74 tutorials by Gregory Taylor (2018):

- Gen Overview: https://docs.cycling74.com/max8/vignettes/gen_overview
- Gen Common Operators: https://docs.cycling74.com/max8/vignettes/gen_common_operators
- gen~ Operators: https://docs.cycling74.com/max8/vignettes/gen~_operators
- GenExpr: https://docs.cycling74.com/max8/vignettes/gen_genexpr
- gen~ reference: https://docs.cycling74.com/max8/refpages/gen~
- gen~ for Beginners, parts 1 to 3:
  https://cycling74.com/tutorials/gen~-for-beginners-part-1-a-place-to-start
  https://cycling74.com/tutorials/gen~-for-beginners-part-2-similarities-and-differences-1
  https://cycling74.com/tutorials/gen~-for-beginners-part-3-counting-and-a-world-without-bang-messages

The index that links them is
https://docs.cycling74.com/legacy/max8/vignettes/gen_topic. A reader
comment under part 3 corrects its description of the counter operator's
reset inlet; the reference pages are the firmer source for operator
meaning. The documentation never uses the phrase "sample frame"; it says
"sample", "single-sample" and "one sample at a time".

The book's transcriptions are OCR-assisted. Pages 2 and 4 were checked
against their page images on 2026-09-29 and match; the underlining of
"sample frames" and "sample rate" on page 2, and the italics on page 4,
are not carried by the transcription. Page 4's photograph is
originals/IMG_7865.HEIC, sha256
6f2a2941b4296da9ba0efda66b61c8b699844407a3b8662b72d13a08695b29c3.

The first sample-frame proposal uses conceptual fidelity to page 4. Its
formal representation remains unresolved; there is no gen~ execution to
compare yet. The documentation supplies the semantics a representation
would be read against: synchronous, loop-free evaluation once per
sample; memory only through history and delay; one numeric type; and, at
the implementation level, an optimization that evaluates parameter-only
arithmetic at the host's vector rate, which the book's "every operator
updates every sample frame" describes conceptually, not literally.
