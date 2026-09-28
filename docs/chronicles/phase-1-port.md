# Phase 1: Port the pipeline

## Entry 2: Local build working (2026-09-28)

**What**: Ported resume-pipeline into this repo; `./build.sh` builds index.html, resume.html/pdf/docx/txt.

**Why**: One build script for local use and the GitHub Action (DEC-003).

**How**:

- Copied `templates/` and Gil's `resume.md`; moved the name from `# H1` to frontmatter `title`
- Restyled `reference.docx` Title style to match Heading 1 so the DOCX looks unchanged
- `build.sh` reads name and metadata via pandoc templates (`$title$`, `$meta-json$`), builds index with inherited metadata, embeds CSS in resume.html
- Installed weasyprint via Homebrew; checked PDF render; DOCX/TXT text matches the old output

**Decisions**:

- DEC-008: name only in frontmatter title
- DEC-009: index inherits resume metadata
- DEC-010: embed CSS in resume.html

**Files**: `build.sh`, `resume.md`, `index.md`, `templates/`, `.gitignore`, `README.md`
