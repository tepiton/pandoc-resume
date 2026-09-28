---
phase: 3
phase_name: Mimeo integration and docs
updated: 2026-09-28
last_commit: 9127027
---

## Current Focus

Phases 1 and 2 are done. The workflow runs `./build.sh _site` but has not run on GitHub yet (Phase 4). Next is Phase 3: `mimeo.template.json` and README.

## Active Tasks

- [ ] Decide what `mimeo.template.json` substitutes; index.md has no `title` now
- [ ] Finish README (remove WIP note once verified)
- [ ] Phase 4: push to a scratch repo and confirm the Action

## Blockers

- Waiting on user: Mimeo substitution choice (see Context)
- Waiting on user: which GitHub repo to push to for Phase 4 (scratch vs `tepiton/pandoc-resume` unregistered)

## Context

- Name is frontmatter `title` only; no H1 in resume.md (DEC-008)
- index.md inherits resume metadata via `--metadata-file` (DEC-009)
- `mimeo.template.json` still targets `title` in index.md, which no longer exists; fix in Phase 3
- weasyprint installed locally via Homebrew (70.0); pandoc 3.11
- Do not register the template until the user approves (DEC-007)

## Next Session

Ask the user the two blocker questions. Options for Mimeo: `{domain}` into resume.md `title` as placeholder; `title: "{domain}"` back in index.md (my lean: site heading = domain, resume keeps the name); or no substitution. Then Phase 3, then Phase 4.
