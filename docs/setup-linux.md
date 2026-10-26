---
title: Setup on Linux
nav_order: 4
---

# Setup on Linux

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)

> ⚠️ **Untested.** These steps follow the official documentation but have not been tested yet. If you try them, please [fill in a short setup report](https://github.com/YevaGalstyan/latex-thesis-template/issues/new?template=setup-report.yml).

## Option A: Your distribution's packages (easiest)

**Ubuntu / Debian:**

```bash
sudo apt update
sudo apt install git texlive-full
```

`texlive-full` is large (about 5–7 GB) but includes everything. For a smaller install, use:

```bash
sudo apt install git latexmk biber \
  texlive-latex-extra texlive-fonts-recommended \
  texlive-bibtex-extra texlive-science
```

and add a `texlive-lang-*` package if you write in a language other than English (for example `texlive-lang-german`).

**Fedora:**

```bash
sudo dnf install git texlive-scheme-full
```

**Arch Linux:**

```bash
sudo pacman -S git texlive texlive-langextra biber
```

## Option B: Official TeX Live installer (newest version)

Distribution packages can be a year or two behind. For the newest version, follow the [TeX Live quick install guide](https://tug.org/texlive/quickinstall.html).

## Check the installation

```bash
which pdflatex latexmk biber
```

## Next: VS Code

Continue with [VS Code (all systems)](vscode.md).

---

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)
