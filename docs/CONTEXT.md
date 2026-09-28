---
phase: 2
phase_name: GitHub Action
updated: 2026-09-28
last_commit: 75ebb5d
---

## Current Focus

Phase 1 is done: `./build.sh` builds index, HTML, PDF, DOCX, and TXT locally. Next is Phase 2: have `pages.yml` run `./build.sh _site`.

## Active Tasks

- [ ] Workflow: install pandoc and weasyprint (no extra fonts, DEC-006)
- [ ] Workflow: replace inline pandoc with `./build.sh _site`
- [ ] Check apt pandoc version supports `--embed-resources` (pandoc >= 2.19); else install a pandoc release .deb

## Blockers

None.

## Context

- Name is frontmatter `title` only; no H1 in resume.md (DEC-008)
- index.md inherits resume metadata via `--metadata-file` (DEC-009)
- `mimeo.template.json` still targets `title` in index.md, which no longer exists; fix in Phase 3
- weasyprint installed locally via Homebrew (70.0); pandoc 3.11
- Do not register the template until the user approves (DEC-007)

## Next Session

Start Phase 2 in `docs/IMPLEMENTATION.md`.
