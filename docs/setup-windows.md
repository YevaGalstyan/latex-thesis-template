---
title: Setup on Windows
nav_order: 3
---

# Setup on Windows

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)

> ⚠️ **Untested.** These steps follow the official documentation but have not been tested yet. If you try them, please [fill in a short setup report](https://github.com/YevaGalstyan/latex-thesis-template/issues/new?template=setup-report.yml).

## 1. Git

Download and install **Git for Windows** from [git-scm.com/downloads](https://git-scm.com/downloads). The default options are fine. This also installs **Git Bash**, a terminal in which all commands in this documentation work as written.

## 2. TeX distribution

There are two options. **TeX Live is recommended** because it includes everything this template needs, including the Perl interpreter that `latexmk` requires.

**Option A: TeX Live (recommended)**

1. Download `install-tl-windows.exe` from the [TeX Live Windows page](https://tug.org/texlive/windows.html).
2. Run it and choose the **full** scheme (the default). The install is about 8 GB and can take an hour or more.
3. The installer adds TeX Live to your PATH automatically.

**Option B: MiKTeX**

[MiKTeX](https://miktex.org/download) is smaller and installs missing packages on demand.

1. Download and run the installer from [miktex.org/download](https://miktex.org/download).
2. During installation, set **"Install missing packages on-the-fly"** to **Yes**.
3. After installation, open the **MiKTeX Console** and click **Check for updates** → **Update now**.
4. `latexmk` needs Perl, which MiKTeX doesn't include. Install [Strawberry Perl](https://strawberryperl.com/).

## 3. Check the installation

Open a **new** Git Bash or PowerShell window and run:

```bash
where pdflatex
where latexmk
where biber
```

Each command should print a path. If not, restart your computer so the new PATH is picked up.

## 4. Next: VS Code

Continue with [VS Code (all systems)](vscode.md).

---

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)
