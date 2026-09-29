---
phase: 4
phase_name: Verify and publish as template
updated: 2026-09-29
last_commit: 77208d6
---

## Current Focus

The template is finished and registered: repo is a GitHub template with topics, listed in `TEMPLATES/CLAUDE.md` and the org profile README. Live demo at https://tepiton.com/pandoc-resume/.

## Active Tasks

- [ ] Mimeo deploy race (out-of-order push events deploy a pre-manifest commit). Fix belongs in Mimeo, not here; not started

## Blockers

None.

## Context

- Name, objective, contact are frontmatter keys; `resume-header.lua` renders them in all formats (DEC-014)
- Index inherits resume frontmatter; Mimeo sets index `url` (DEC-015); `index.lua` adds file sizes and stringifies `url`
- CI installs Carlito so the PDF stays at 2 pages (DEC-012)
- Sample resume is fictional (Wren Ashcombe; DEC-013)
- Gil's real resume belongs in its own site repo, not this template

## Next Session

Maintenance only. If the Mimeo race is picked up, work in `~/projects/mimeo`.
