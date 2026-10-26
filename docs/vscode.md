---
title: VS Code and Building
nav_order: 5
---

# VS Code and Building the PDF

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)

## 1. Install VS Code

Download it from [code.visualstudio.com](https://code.visualstudio.com/).

- **macOS:** drag **Visual Studio Code.app** into **Applications**. Then add the `code` terminal command: press `Cmd+Shift+P`, type `shell command` and choose **Shell Command: Install 'code' command in PATH**.
- **Windows:** the installer adds `code` to your PATH automatically. Tick **"Add 'Open with Code' action"** for convenience.
- **Linux:** follow the [instructions for your distribution](https://code.visualstudio.com/docs/setup/linux).

## 2. Install the extensions

Open the thesis folder in VS Code:

```bash
code .
```

VS Code shows a pop-up: **"Do you want to install the recommended extensions?"** Click **Install**. Or install them manually:

| Extension | Purpose | Required? |
|---|---|---|
| [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) | Build on save, PDF preview, error highlighting, SyncTeX | **Yes** |
| [LTeX+](https://marketplace.visualstudio.com/items?itemName=ltex-plus.vscode-ltex-plus) | Grammar, spelling and style checking for LaTeX | Recommended |
| [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) | Fast spell checking | Optional |

From the terminal:

```bash
code --install-extension James-Yu.latex-workshop
code --install-extension ltex-plus.vscode-ltex-plus
code --install-extension streetsidesoftware.code-spell-checker
```

The first time you open a `.tex` file, LTeX+ downloads its language checker in the background. This takes about a minute.

## 3. Settings

The settings are already in `.vscode/settings.json`, so you don't need to configure anything. They:

- build with `latexmk` (using `.latexmkrc`) **every time you save**
- open the PDF preview in a tab next to your text
- hide build files from the file explorer
- tell LTeX+ how to read commands like `\ac{}` and `\cref{}`, so they aren't flagged as errors

## Building the PDF

### In VS Code

- **Save any `.tex` file** (`Cmd+S` / `Ctrl+S`): the PDF rebuilds automatically.
- **Open the preview:** `Cmd+Option+V` (macOS) / `Ctrl+Alt+V` (Windows/Linux).
- **Jump from source to PDF:** `Cmd+Option+J` / `Ctrl+Alt+J`.
- **Jump from PDF to source:** `Cmd`+click / `Ctrl`+click in the preview.
- **Errors and warnings** appear in the **Problems** panel (`Cmd+Shift+M` / `Ctrl+Shift+M`).

### In the terminal

| Command | What it does |
|---|---|
| `latexmk` | Build `main.pdf` (runs pdflatex and biber as many times as needed) |
| `latexmk -pvc` | Keep building on every save and open a PDF viewer |
| `latexmk -c` | Delete build files, keep the PDF |
| `latexmk -C` | Delete build files **and** the PDF |
| `latexmk -g` | Force a full rebuild |

---

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)
