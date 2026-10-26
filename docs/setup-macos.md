---
title: Setup on macOS
nav_order: 2
---

# Setup on macOS

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)

✅ **Tested.** This is the setup the template was developed and tested on.

## 1. Git

Open **Terminal** and run:

```bash
git --version
```

If a pop-up asks you to install the **command line developer tools**, click **Install** and wait for it to finish (about 5–10 minutes). Run `git --version` again to confirm.

## 2. Homebrew (recommended)

[Homebrew](https://brew.sh) is a package manager for macOS. Check whether you already have it:

```bash
brew --version
```

If not, install it with the command from [brew.sh](https://brew.sh):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- It asks for your **Mac password**. Nothing appears on screen while you type it; that's normal.
- At the end, it prints **"Next steps"**. On Apple Silicon Macs (M1 and later), run the commands shown there to add Homebrew to your PATH.

## 3. MacTeX

[MacTeX](https://tug.org/mactex/) is the full TeX Live distribution for macOS. It includes `pdflatex`, `latexmk`, `biber` and every package this template uses.

**With Homebrew:**

```bash
brew install --cask mactex
```

**Without Homebrew:** download `MacTeX.pkg` from [tug.org/mactex](https://tug.org/mactex/mactex-download.html) and run the installer.

> ⚠️ **Watch for the password prompt.** The download is about 5–6 GB. Partway through, the installer asks for your password. **If you miss it, the install silently does nothing.** Stay near the terminal.

When it finishes, **quit Terminal completely (`Cmd+Q`)**, open a new window and check:

```bash
which pdflatex latexmk biber
```

All three should be under `/Library/TeX/texbin/`. If they aren't, see [`latexmk: command not found`](troubleshooting.md#latexmk-command-not-found).

## 4. Next: VS Code

Continue with [VS Code (all systems)](vscode.md).

---

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)
