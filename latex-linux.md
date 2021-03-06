# Latex minimalistic set-up

## Install
```
sudo apt install texlive-latex-extra
```
## Create file
1. Create *.tet* file
```
touch Example.tex
```
2. Open file an add:
```
\documentclass{article}
\usepackage{hyperref}
\title{Title}
\author{Author name}
\begin{document}
\maketitle
\begin{document}
\maketitle
% Insert code
\end{document}
```
## Compile
```
pdflatex tex-file-name.tex
```
view:
```
evince tex-file-name.tex
```

## Optional: Latex editor
```
sudo apt install texmaker
```

