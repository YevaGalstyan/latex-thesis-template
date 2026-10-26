---
title: Home
nav_order: 1
permalink: /
---

# Documentation

[Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)

## Setup

You need three things:

| Tool | What it does |
|---|---|
| **A TeX distribution** | The LaTeX compiler, packages and fonts. Must include `pdflatex`, `latexmk` and `biber`. |
| **VS Code** with LaTeX Workshop | Editor with build-on-save and PDF preview |
| **Git** | Version control and syncing with GitHub |

Optional: **Zotero** with **Better BibTeX** for managing references (see [Managing references with Zotero](zotero.md)).

Then follow the guide for your system:

| Guide | Status |
|---|---|
| [macOS](setup-macos.md) | ✅ Tested |
| [Windows](setup-windows.md) | ⚠️ Untested |
| [Linux](setup-linux.md) | ⚠️ Untested |
| [VS Code and building the PDF](vscode.md) | All systems |

## Using the template

- [Writing your thesis](writing.md): folder structure, config, chapters, figures, cross-references, abbreviations, citations
- [Managing references with Zotero](zotero.md): install Zotero and Better BibTeX, auto-export to `references.bib`
- [Automatic PDF builds on GitHub](github-builds.md): download PDFs, releases, private repositories
- [Customization](customization.md): language, fonts, margins, citation style
- [Troubleshooting](troubleshooting.md): common errors and fixes

## Useful links

**Installation**
- [MacTeX](https://tug.org/mactex/) · [Homebrew](https://brew.sh)
- [TeX Live](https://tug.org/texlive/) · [TeX Live for Windows](https://tug.org/texlive/windows.html) · [TeX Live quick install (Linux)](https://tug.org/texlive/quickinstall.html)
- [MiKTeX](https://miktex.org/download) · [Strawberry Perl](https://strawberryperl.com/)
- [Git](https://git-scm.com/downloads)
- [VS Code](https://code.visualstudio.com/)

**VS Code extensions**
- [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) ([documentation](https://github.com/James-Yu/LaTeX-Workshop/wiki))
- [LTeX+](https://marketplace.visualstudio.com/items?itemName=ltex-plus.vscode-ltex-plus)
- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)

**References**
- [Zotero](https://www.zotero.org/download/) · [Zotero documentation](https://www.zotero.org/support/)
- [Better BibTeX](https://retorque.re/zotero-better-bibtex/) · [Installation](https://retorque.re/zotero-better-bibtex/installation/) · [Citation keys](https://retorque.re/zotero-better-bibtex/citing/)

**Learning LaTeX**
- [Overleaf LaTeX documentation](https://www.overleaf.com/learn) (useful even when you don't use Overleaf)
- [LaTeX Wikibook](https://en.wikibooks.org/wiki/LaTeX)
- [TeX Stack Exchange](https://tex.stackexchange.com/) for questions
- Package documentation on CTAN: [biblatex](https://ctan.org/pkg/biblatex) · [latexmk](https://ctan.org/pkg/latexmk) · [cleveref](https://ctan.org/pkg/cleveref) · [acronym](https://ctan.org/pkg/acronym) · [siunitx](https://ctan.org/pkg/siunitx) · [booktabs](https://ctan.org/pkg/booktabs)

**GitHub**
- [Creating a repository from a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
- [GitHub CLI](https://cli.github.com/) · [GitHub Actions documentation](https://docs.github.com/en/actions)
- [latex-action](https://github.com/xu-cheng/latex-action), which builds the PDF in the workflow

---

> 💡 **Using this template for your own thesis?** You can delete this whole `docs/` folder from your copy (`rm -rf docs`). The documentation stays available in the [template repository](https://github.com/YevaGalstyan/latex-thesis-template/tree/main/docs).
