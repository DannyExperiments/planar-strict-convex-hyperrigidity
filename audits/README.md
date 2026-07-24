# Audit record

The files in this directory are immutable complete audit returns.

- `Artifact_A_hostile_audit_1.md` and
  `Artifact_A_hostile_audit_2.md` independently audit the corrected square,
  interval, and polytope proof.
- `Artifact_B_hostile_audit_1.md` and
  `Artifact_B_hostile_audit_2.md` independently audit the arbitrary planar
  compact-convex extension and its dependence on Artifact A and Scherer's
  theorem.
- `final_hostile_referee_report.md` audits the first assembled manuscript.
  It passed the main theorem and corollaries while identifying two local
  omissions and several release-quality corrections. All were repaired in
  the current TeX.

These are AI-generated reports.  They support internal mathematical
confidence but are not human referee reports.

`FINAL_PAPER_BLIND_AUDIT_PROMPT.txt` is the frozen prompt used for the first
assembled-manuscript audit. Earlier proof artifacts, audits, and literature
reports were deliberately withheld to reduce anchoring.

A new hostile audit of the repaired manuscript is in progress as of
2026-07-24. Its return must be preserved as a new immutable file with its own
hash; it must not overwrite `final_hostile_referee_report.md`.
