# latexmk configuration: used by `latexmk`, VS Code and GitHub Actions

# Build main.tex when you just type `latexmk`
@default_files = ('main.tex');

# Use pdfLaTeX (Palatino fonts in the preamble need it)
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';

# Run biber for the bibliography when needed, and remove the
# .bbl file on `latexmk -c`
$bibtex_use = 2;

# Extra files to delete on `latexmk -c`
$clean_ext = 'run.xml synctex.gz bbl nav snm loa lol';