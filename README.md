# Thesis Template: LaTeX locally, without Overleaf

[![Build PDF](https://github.com/YevaGalstyan/latex-thesis-template/actions/workflows/build.yml/badge.svg)](https://github.com/YevaGalstyan/latex-thesis-template/actions/workflows/build.yml)
[![License: MIT-0](https://img.shields.io/badge/License-MIT--0-blue.svg)](LICENSE)
[![Use this template](https://img.shields.io/badge/-Use%20this%20template-2ea44f)](https://github.com/YevaGalstyan/latex-thesis-template/generate)

A ready-to-use LaTeX template for **Bachelor's, Master's and PhD theses** that you write and compile **on your own computer**: free, offline, with no compile time limits.

**[📄 See the sample PDF](https://github.com/YevaGalstyan/latex-thesis-template/releases/latest/download/main.pdf)** · **[📚 Documentation website](https://yevagalstyan.github.io/latex-thesis-template/)** ([or read it on GitHub](docs/index.md))

> **Tested on macOS only.** The Windows and Linux guides follow the official documentation but have not been tested yet. If you try them, please [fill in a short setup report](https://github.com/YevaGalstyan/latex-thesis-template/issues/new?template=setup-report.yml).

## Why?

Online LaTeX editors are convenient until your thesis grows. Long documents with many figures and a bibliography can hit the compile time limit of free plans, often close to a deadline. This template gives you a local setup from the start:

- **Free and unlimited.** Compile as often as you want.
- **Works offline.** Write anywhere.
- **Git version control.** Full history and a backup on GitHub.
- **A real editor.** VS Code with live PDF preview, grammar checking and jump-to-source.
- **Automatic bibliography.** Zotero keeps `references.bib` up to date.

## What's included

- **One config file** for your title, name, university, supervisors, logo and language
- **Title page, abstract, table of contents, lists of figures, tables, abbreviations and symbols, declaration** and an optional **AI tool usage** page
- **Six placeholder chapters**, one file per section, plus an **appendix**
- A **LaTeX cheat sheet** chapter with working examples of citations, figures, tables, equations, algorithms and code
- **biblatex + biber** bibliography, **latexmk** build config and **VS Code** settings
- A **GitHub Actions** workflow that builds the PDF on every push

## Quick start

1. Click **[Use this template](https://github.com/YevaGalstyan/latex-thesis-template/generate)** to create your own copy, then clone it.
2. Install LaTeX and VS Code: [macOS](docs/setup-macos.md) · [Windows](docs/setup-windows.md) · [Linux](docs/setup-linux.md), then [VS Code](docs/vscode.md).
3. Build the PDF:
   ```bash
   latexmk
   ```
4. Put your details in `content/misc/thesis-config.tex` and start writing in `content/`.
5. Optional: [connect Zotero](docs/zotero.md) for your references.

## Documentation

| Topic | |
|---|---|
| **Setup** | [macOS](docs/setup-macos.md) ✅ · [Windows](docs/setup-windows.md) ⚠️ · [Linux](docs/setup-linux.md) ⚠️ · [VS Code](docs/vscode.md) |
| **Writing** | [Folder structure, chapters, figures, citations, abbreviations](docs/writing.md) |
| **References** | [Zotero and Better BibTeX](docs/zotero.md) |
| **GitHub** | [Automatic PDF builds and releases](docs/github-builds.md) |
| **Adjusting** | [Customization](docs/customization.md) · [Troubleshooting](docs/troubleshooting.md) |

✅ tested · ⚠️ untested

> 💡 **Using this template for your own thesis?** You can delete the `docs/` folder from your copy (`rm -rf docs`). The documentation stays available [here](https://github.com/YevaGalstyan/latex-thesis-template/tree/main/docs).

## License

[MIT No Attribution](LICENSE) (MIT-0). You can use, change and share this template freely, **including for your own thesis, without keeping the license file or crediting anyone**. Your thesis content is entirely yours.

---

*Created by [Yeva Galstyan](https://github.com/YevaGalstyan), based on the setup used for her Master's thesis. Contributions are welcome, especially [setup reports](https://github.com/YevaGalstyan/latex-thesis-template/issues/new?template=setup-report.yml) from Windows and Linux.*
