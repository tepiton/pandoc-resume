---
phase: 0
phase_name: Planning
updated: 2026-09-28
last_commit: 8b9af58
---

## Current Focus

Planning is done and tracking is set up. No template files have been changed yet. Next is Phase 1: port `resume-pipeline` into this repo.

## Active Tasks

- [ ] Phase 1: copy templates/, resume.md, build.sh from `~/projects/resume-pipeline/`
- [ ] Add frontmatter to resume.md; suppress duplicate title rendering
- [ ] Rewrite index.md as a links page
- [ ] Update `build.sh` (outdir arg, title from frontmatter, build index)

## Blockers

None.

## Context

- Repo is a clone of `../pandoc-simple`; current files are still pandoc-simple's (`index.md`, `html.template.pandoc`, `pages.yml`, `mimeo.template.json`)
- Source pipeline: `~/projects/resume-pipeline/` (`build.sh`, `templates/`)
- Do not register in `TEMPLATES/CLAUDE.md` or create the GitHub repo until the user approves (DEC-007)
- No extra fonts in CI (DEC-006)

## Next Session

Start Phase 1 in `docs/IMPLEMENTATION.md`. Read `CLAUDE.md` and `DECISIONS.md` first.
