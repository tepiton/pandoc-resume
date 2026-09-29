---
phase: 4
phase_name: Verify and publish as template
updated: 2026-09-28
last_commit: 353e22b
---

## Current Focus

The template works end to end: the Action builds and deploys to https://tepiton.com/pandoc-resume/ with all five files. Remaining work is registering it as a template, which waits on user sign-off.

## Active Tasks

- [ ] User sign-off that the template is finished
- [ ] Set `is_template` and topics on `tepiton/pandoc-resume`
- [ ] Add to `TEMPLATES/CLAUDE.md` and `TEMPLATES/README.md`; update "all templates" counts (ten to eleven)

## Blockers

- Waiting on user sign-off (DEC-007)

## Context

- Name is frontmatter `title` only; no H1 in resume.md (DEC-008)
- Index heading = domain via Mimeo; resume name edited by hand (DEC-011)
- CI installs Carlito so PDF page breaks match local Calibri (DEC-012)
- Deployed index shows `pandoc-resume` placeholder because Mimeo did not create this repo
- Pages source is GitHub Actions; workflow was enabled by the user

## Next Session

Ask the user whether the template is finished. If yes, do the remaining Phase 4 tasks.
