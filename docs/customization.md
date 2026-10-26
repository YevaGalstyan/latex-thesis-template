---
title: Customization
nav_order: 9
---

# Customization

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)

| What | Where | How |
|---|---|---|
| Language | `thesis-config.tex` | `\thesislanguage{ngerman}` (or `british`, `french`, …). Also change `ltex.language` in `.vscode/settings.json`. |
| Font | `preamble.tex` | Remove the `mathpazo` and `\linespread` lines for the default Latin Modern font |
| Margins | `preamble.tex` | Change the values in the `geometry` options |
| Line spacing | `preamble.tex` | Replace `\onehalfspacing` with `\singlespacing` or `\doublespacing` |
| Citation style | `preamble.tex` | Change `style=authoryear` to `numeric`, `ieee`, `apa`, … ([biblatex styles](https://ctan.org/pkg/biblatex)) |
| Double-sided printing | `main.tex` | Replace `oneside` with `twoside` |
| Declaration text | `declaration.tex` | Replace with your university's official wording |

---

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)
