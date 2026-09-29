---
phase: 3
phase_name: Mimeo integration and docs
updated: 2026-09-28
last_commit: 9127027
---

## Current Focus

Phases 1 and 2 are done. The workflow runs `./build.sh _site` but has not run on GitHub yet (Phase 4). Next is Phase 3: `mimeo.template.json` and README.

## Active Tasks

- ✅ Mimeo substitutes `{domain}` into index.md `title` (DEC-011)
- [ ] Finish README (remove WIP note once verified)
- [ ] Phase 4: push to a scratch repo and confirm the Action

## Blockers

- Waiting on user: which GitHub repo to push to for Phase 4 (scratch vs `tepiton/pandoc-resume` unregistered)

## Context

- Name is frontmatter `title` only; no H1 in resume.md (DEC-008)
- index.md inherits resume metadata via `--metadata-file` (DEC-009)
- Index heading = domain via Mimeo; resume name edited by hand (DEC-011)
- weasyprint installed locally via Homebrew (70.0); pandoc 3.11
- Do not register the template until the user approves (DEC-007)

## Next Session

Ask the user which GitHub repo to push to for Phase 4 (scratch vs `tepiton/pandoc-resume` unregistered). Then finish README.
