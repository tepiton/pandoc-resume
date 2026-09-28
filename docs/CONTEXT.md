---
phase: 3
phase_name: Mimeo integration and docs
updated: 2026-09-28
last_commit: 60ab1e0
---

## Current Focus

Phases 1 and 2 are done. The workflow runs `./build.sh _site` but has not run on GitHub yet (Phase 4). Next is Phase 3: `mimeo.template.json` and README.

## Active Tasks

- [ ] Decide what `mimeo.template.json` substitutes; index.md has no `title` now
- [ ] Finish README (remove WIP note once verified)
- [ ] Phase 4: push to a scratch repo and confirm the Action

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
