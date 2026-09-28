# pandoc-resume — Claude Instructions

A Mimeo template (working name `tepiton/pandoc-resume`) that builds a resume
from a single Markdown file into HTML, PDF, DOCX, and TXT in a GitHub Action,
and deploys them to GitHub Pages behind an index page.

This directory started as a clone of `../pandoc-simple`. The build logic comes
from `~/projects/resume-pipeline/` (`build.sh`, `templates/`).

## Session pickup

Read `docs/CONTEXT.md` first. Then `docs/IMPLEMENTATION.md` for phase progress
and `docs/DECISIONS.md` (grep it) for why things are the way they are.

## Design (agreed)

- `resume.md` is the single source of truth. It has YAML frontmatter
  (name, contact, metadata). Everything else is generated from it.
- `index.md` is a separate, customizable page that links to the four outputs
  (HTML resume, PDF, DOCX, TXT). It is built with `html.template.pandoc`.
- The resume HTML page is styled with `templates/resume.css`; PDF uses
  `templates/pdf.css`; DOCX uses `templates/reference.docx`.
- `build.sh [outdir]` is the one build entry point. The GitHub Action calls it
  (`./build.sh _site`); local builds call it too.
- The PDF uses weasyprint. Built-in fonts are fine; do not install extra fonts
  in CI.
- Sample content is Gil Borenstein's real resume (the reason this template
  exists).
- ATS-safe constraints in `resume.md`: no tables, columns, or images for text;
  real `##` section headings; plain-text contact info (no markdown links).

## Constraints

- Do not add this template to `TEMPLATES/CLAUDE.md`, `TEMPLATES/README.md`, or
  create the GitHub repo / `is_template` flag until the user says the template
  is finished.
- Shell scripts are bash. JavaScript conventions in the global CLAUDE.md do
  not apply here (no JS).
- `mimeo.template.json` must substitute the title/name into `resume.md`
  frontmatter (`yaml-frontmatter-key`), not `index.md` alone.

## Tracking

Update `docs/CONTEXT.md` at the end of each work session, add chronicle
entries under `docs/chronicles/`, and record decisions in `docs/DECISIONS.md`.
