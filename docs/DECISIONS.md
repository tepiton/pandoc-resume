# Decisions

Architectural decisions for this project. Search with `grep -i "keyword" docs/DECISIONS.md`.

## Active Decisions

### DEC-001: resume.md is the single source of truth (2026-09-28)

**Status**: Active

**Context**: The resume-pipeline project already established this (its DEC-001). The template must keep it while also feeding a website.

**Decision**: All content lives in `resume.md`, including YAML frontmatter for name and metadata. HTML, PDF, DOCX, and TXT are generated from it.

**Alternatives considered**: Keeping the name in a separate config file; parsing the name from the H1.

**Consequences**: Frontmatter must not render as a duplicate heading in any output. Mimeo substitution targets `resume.md` frontmatter.

---

### DEC-002: Index page is a separate, customizable index.md (2026-09-28)

**Status**: Active

**Context**: The Pages site root needs to work and link to several files. The user may want to customize it.

**Decision**: `index.md` is a normal Markdown page that links to `resume.html`, `resume.pdf`, `resume.docx`, and `resume.txt`. It is built independently of the resume.

**Alternatives considered**: Making the resume HTML the site root with download links; copying `resume.html` to `index.html`.

**Consequences**: Two build targets (index and resume). Index links are relative and static.

---

### DEC-003: build.sh is the single build entry point, used locally and in CI (2026-09-28)

**Status**: Active

**Context**: The pipeline already has `build.sh`. Duplicating pandoc commands in the workflow would let CI and local builds drift.

**Decision**: The workflow runs `./build.sh _site`. Dependency install hints (brew/apt) are removed from the script since CI installs dependencies.

**Alternatives considered**: Inline pandoc/weasyprint commands in `pages.yml`.

**Consequences**: The workflow stays short. `build.sh` needs a title derived from frontmatter rather than a hardcoded name.

---

### DEC-004: Keep html.template.pandoc for the index page; resume.css for the resume HTML (2026-09-28)

**Status**: Active

**Context**: The user left this to my call. `pandoc-simple`'s `html.template.pandoc` is a general page template; the resume HTML uses `resume.css`, a centered reading column.

**Decision**: Use `html.template.pandoc` for `index.md`, so the index remains a customizable pandoc-simple-style page. The resume HTML uses pandoc's default template with `--css=templates/resume.css`, as in resume-pipeline.

**Alternatives considered**: Dropping `html.template.pandoc` and styling everything with CSS only; using the template for the resume too.

**Consequences**: Keeps the resume HTML identical to the existing pipeline output. May revisit if the two pages should look alike.

---

### DEC-005: Sample content is Gil Borenstein's resume (2026-09-28)

**Status**: Active

**Context**: The template exists for this resume.

**Decision**: Ship Gil's `resume.md` as the sample, with frontmatter added.

**Alternatives considered**: Generic placeholder resume.

**Consequences**: Mimeo substitution must replace the name for other users. Personal contact info ships in the template repo.

---

### DEC-006: Default fonts, weasyprint in CI (2026-09-28)

**Status**: Active

**Context**: `pdf.css` requests Carlito/Calibri/Arial. The user does not care about exact PDF fonts.

**Decision**: Do not install extra fonts in CI. Install only pandoc and weasyprint (plus required Pango libraries).

**Alternatives considered**: Installing `fonts-crosextra-carlito` to match local output.

**Consequences**: CI PDF may look slightly different from a local PDF. Acceptable.

---

### DEC-007: Template is not registered until approved (2026-09-28)

**Status**: Active

**Context**: The user wants to be happy with the template before it appears in the org docs.

**Decision**: Do not create the GitHub repo, set `is_template`, or edit `TEMPLATES/CLAUDE.md` / `README.md` until the user approves.

**Alternatives considered**: Registering early.

**Consequences**: Phase 4 gates on user sign-off.

---

## Superseded/Deprecated

None yet.
