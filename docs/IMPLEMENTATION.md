# Implementation Progress

## Phase Overview

| Phase | Name | Status |
|---|---|---|
| 0 | Planning | In Progress |
| 1 | Port the pipeline | Not Started |
| 2 | GitHub Action | Not Started |
| 3 | Mimeo integration and docs | Not Started |
| 4 | Verify and publish as template | Not Started |

## Phase 0: Planning

**Goal**: Agree on the design for turning `~/projects/resume-pipeline/` into a Mimeo template built by a GitHub Action.

### Completed

- Reviewed `pandoc-simple` workflow (`pages.yml`, `html.template.pandoc`, `mimeo.template.json`)
- Reviewed `resume-pipeline` (`build.sh`, `templates/`, README, docs)
- Design questions answered (see `DECISIONS.md` DEC-001 to DEC-006)
- `CLAUDE.md` and `docs/` tracking set up

### Active Tasks

- [ ] Finish Phase 0 by starting Phase 1

## Phase 1: Port the pipeline

**Goal**: A local `./build.sh` in this repo produces `index`, resume HTML, PDF, DOCX, and TXT.

### Tasks

- [ ] Copy `templates/pdf.css`, `templates/resume.css`, `templates/reference.docx` from resume-pipeline
- [ ] Replace `index.md` with an index page linking to `resume.html`, `resume.pdf`, `resume.docx`, `resume.txt`
- [ ] Add `resume.md` from resume-pipeline (Gil's resume) and add YAML frontmatter (name, contact, description)
- [ ] Make sure frontmatter does not render as a duplicate title/header in HTML, PDF, DOCX, TXT
- [ ] Port `build.sh`: take output dir argument; derive PDF/HTML title from frontmatter instead of hardcoded name; drop brew/apt install hints
- [ ] Extend `build.sh` to build `index.md` with `html.template.pandoc`; decide how index links get the person's name
- [ ] Remove pieces made redundant (old `index.md` content)
- [ ] Run `./build.sh` locally and inspect all four outputs plus index

## Phase 2: GitHub Action

**Goal**: `pages.yml` builds everything with `./build.sh _site` and deploys it.

### Tasks

- [ ] Install pandoc and weasyprint in the workflow (`pip install weasyprint`; add Pango apt packages if required; no extra fonts)
- [ ] Replace inline pandoc command with `./build.sh _site`
- [ ] Confirm `_site/` contains index plus all four resume files
- [ ] Consider a `workflow_dispatch` artifact upload of the built files

## Phase 3: Mimeo integration and docs

**Goal**: The template works when Mimeo generates a repo from it, and is documented.

### Tasks

- [ ] Update `mimeo.template.json` to substitute into `resume.md` frontmatter (and `index.md` if needed)
- [ ] Rewrite `README.md` (usage, file roles, ATS-safety rules from resume-pipeline)
- [ ] Decide whether `html.template.pandoc` needs changes for the index page

## Phase 4: Verify and publish as template

**Goal**: Confirm the Action works in a real repo, then register the template.

### Tasks

- [ ] Push to a scratch repo and confirm the Action builds and deploys, PDF renders, links work
- [ ] User sign-off that the template is finished
- [ ] Create `tepiton/pandoc-resume`, set `is_template`, topics
- [ ] Add to `TEMPLATES/CLAUDE.md` and `TEMPLATES/README.md`; update "all templates" counts (ten to eleven)

## Future Phases

None planned.
