---
title: "Session excerpt — checker failure handling"
source: Codex session in /Users/mark/dev/repos/beatcode-lean, 2026-09-28
fidelity: selected conversation text verbatim; omissions identified below; reasoning and tool traffic omitted
exported: 2026-09-28 by Codex
---

# Checker failure handling

## agent (final paragraph of the recommendation; preceding paragraphs omitted)

The fix is straightforward: retain any failure encountered and exit nonzero after reporting all files. The checker script remains unchanged pending our discussion.

## operator

why not just have the shell return the correct output?

## agent

Yes. The shell should print Lean’s output and return failure when Lean fails.

Because the script checks multiple files, it needs to remember whether **any** failed, so a later successful check cannot overwrite an earlier failure. That’s all I meant by retaining failures—it’s a small wrapper fix.

## operator

shouldn't it just fail and stop? why keep checking aftor that?

## agent

Yes. It should print Lean’s diagnostics and immediately exit with Lean’s failure code. That also matches the doctrine’s rule to stop at the first failure.

Continuing would collect more diagnostics, but there’s no requirement for that here. My suggestion added unnecessary behavior.

## operator

is that a failure worth persisting?

## agent

Yes. My recommendation is worth recording: I proposed continuing after failure despite the existing rule to stop at the first failure. That could have carried the wrong behavior into the implementation.

The error record should capture:

- **What happened:** I recommended collecting failures instead of stopping.
- **Detection:** You challenged the recommendation against the intended behavior.
- **Guard:** Check proposed behavior against the doctrine before recommending it.
- **Correct behavior:** Print Lean’s diagnostics and immediately return its failure code.

The wrapper’s existing exit-status bug is a related implementation defect.

## operator

either way, let's do the fix
