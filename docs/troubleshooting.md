---
title: Troubleshooting
nav_order: 10
---

# Troubleshooting

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)

## `latexmk: command not found`

The terminal can't find your TeX installation.

**macOS:**

1. Check whether MacTeX is installed:
   ```bash
   ls /Library/TeX/texbin/latexmk
   ```
   If the file doesn't exist, the install didn't finish (usually because the password prompt was missed). Run `brew reinstall --cask mactex` and stay near the terminal.
2. If the file exists, add it to your PATH:
   ```bash
   eval "$(/usr/libexec/path_helper)"
   echo 'export PATH="/Library/TeX/texbin:$PATH"' >> ~/.zprofile
   ```
3. Open a new terminal window and try again.

**Windows:** restart your computer. If it still fails, check that the TeX bin folder (for example `C:\texlive\2026\bin\windows`) is in your PATH. With MiKTeX, also check that Strawberry Perl is installed.

**Linux:** check that `latexmk` is installed (`sudo apt install latexmk` on Ubuntu).

## VS Code says `latexmk` is not found, but it works in the terminal

VS Code was opened before the PATH was fixed. **Quit VS Code completely** (`Cmd+Q` on macOS, close all windows on Windows) and open it again.

## `! LaTeX Error: File 'xyz.sty' not found`

A package is missing from your TeX installation.

- **MacTeX / TeX Live full:** this shouldn't happen. Run `sudo tlmgr update --self --all`.
- **MiKTeX:** open the MiKTeX Console → **Packages**, search for `xyz` and install it, or enable on-the-fly installation.
- **Linux with distribution packages:** install the package that contains the file (on Ubuntu, `apt-file search xyz.sty` tells you which one), or install `texlive-full`.

## Citations appear as bold keys (**goodfellow2014gan**)

Biber didn't run, or the key doesn't exist in `references.bib`.

1. Run `latexmk -g` to force a full rebuild.
2. Check that the key in your `\textcite{...}` matches the key in `references.bib` exactly (it's case-sensitive).

## Biber errors (`data source not found`, `cache` errors)

The biber cache is probably broken. Clear it and rebuild:

```bash
rm -rf "$(biber --cache)"
latexmk -C
latexmk
```

## Missing glyphs or font errors after switching to LuaLaTeX / XeLaTeX

This template is set up for **pdfLaTeX**. The Palatino font (`mathpazo`) doesn't work with LuaLaTeX or XeLaTeX. Keep the default `latexmk (latexmkrc)` recipe, or remove the font lines from the preamble.

## The build seems stuck or the PDF doesn't update

```bash
latexmk -C
latexmk
```

If that doesn't help, look at `main.log` (search for lines starting with `!`). Errors include the file and line number, for example `content/03_methodology/data.tex:12:`.

---

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)
