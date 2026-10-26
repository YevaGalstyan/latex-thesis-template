---
title: Writing Your Thesis
nav_order: 6
---

# Writing Your Thesis

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)

## Folder structure

```
main.tex                       Root document: puts everything together
references.bib                 Bibliography (edit by hand or export from Zotero)
.latexmkrc                     Build configuration for latexmk
.gitignore                     Keeps build files out of Git
LICENSE                        MIT No Attribution
.github/
  workflows/build.yml          Builds the PDF on GitHub on every push
  ISSUE_TEMPLATE/              Setup report form
.vscode/
  settings.json                Build on save, PDF preview, grammar checking
  extensions.json              Recommended VS Code extensions
content/
  misc/
    thesis-config.tex          ← YOUR DETAILS: edit this first
    preamble.tex               Packages, fonts, layout
    titlepage.tex
    abstract.tex
    acknowledgements.tex       (optional)
    abbreviations.tex
    symbols.tex                (optional)
    declaration.tex
    ai-usage.tex               (optional)
  01_introduction/
    index.tex                  Chapter heading, pulls in the sections below
    motivation.tex
    objectives.tex
    outline.tex
  02_background/
    index.tex
    fundamentals.tex
    related-work.tex
    latex-examples.tex         Cheat sheet: delete when you no longer need it
  03_methodology/
    index.tex
    data.tex
    approach.tex
  04_results/index.tex
  05_discussion/index.tex
  06_conclusion/index.tex
  appendix/index.tex
figures/                       Your images (PNG, JPG, PDF)
assets/                        University logo and other fixed assets
```

Build files (`.aux`, `.log`, `.toc`, `main.pdf`, …) are generated on every build and are ignored by Git.

## 1. Fill in your details

Open `content/misc/thesis-config.tex` and replace the placeholders. **Leave a value empty (`{}`) to hide it** on the title page, for example if you have no co-supervisor or subtitle.

To add your university logo, put the file in `assets/` and set:

```latex
\newcommand{\thesislogo}{assets/logo.png}
```

## 2. Write chapters

Each chapter has its own folder with an `index.tex` that holds the chapter heading and pulls in one file per section:

```latex
\chapter{Introduction}
\label{ch:introduction}

\input{content/01_introduction/motivation}
\input{content/01_introduction/objectives}
```

- **To add a section:** create a new `.tex` file and add an `\input` line for it.
- **To add a chapter:** create a new folder with an `index.tex`, and add an `\input` line for it in `main.tex`.
- **To remove an optional page** (acknowledgements, symbols, AI usage): delete its `\input` line in `main.tex`.

## 3. Figures

Put image files in `figures/` and refer to them by file name, without the folder:

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\textwidth]{my-plot}
  \caption{What the figure shows.}
  \label{fig:my-plot}
\end{figure}
```

Use **PDF** for plots and diagrams (they stay sharp at any zoom) and **PNG/JPG** for photos and screenshots.

## 4. Cross-references

Label everything with a prefix (`ch:`, `sec:`, `fig:`, `tab:`, `eq:`) and refer to it with `\cref`:

```latex
As shown in \cref{fig:my-plot} ...      % → "As shown in Figure 3.1 ..."
\Cref{tab:results} lists ...            % → "Table 4.2 lists ..." (start of sentence)
```

## 5. Abbreviations

Define each abbreviation once in `content/misc/abbreviations.tex`:

```latex
\acro{GAN}{Generative Adversarial Network}
```

Then use `\ac{GAN}` in the text. The first use prints *"Generative Adversarial Network (GAN)"*, later uses print *"GAN"*. Use `\acp{GAN}` for the plural. Only abbreviations you actually use appear in the list.

## 6. Citations

```latex
\textcite{goodfellow2014gan} introduced ...   % → "Goodfellow et al. (2014) introduced ..."
... has been shown~\parencite{lecun2015deep}.  % → "... has been shown (LeCun et al., 2015)."
```

Use `\textcite` when the author is part of the sentence and `\parencite` otherwise.

## 7. Notes to yourself

```latex
\todo{Add the results for experiment 2.}
```

This prints a red **TODO** note in the PDF. **Search for `\todo` before you submit** and make sure none are left.

## 8. The cheat sheet

`content/02_background/latex-examples.tex` contains working examples of everything above, plus tables, subfigures, equations, algorithms and code listings. Copy what you need, then delete the file and its `\input` line.

## Writing conventions (suggestions)

- Citation keys follow `authorYEARkeyword`, for example `goodfellow2014gan`.
- Use `\textcite` when the author is the subject of the sentence, `\parencite` otherwise.
- One file per section keeps files short and Git diffs readable.
- Commit often, with short messages that say what changed: `git commit -m "Draft related work section"`.

---

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)
