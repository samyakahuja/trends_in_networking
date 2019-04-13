# Trends in Mobile Communications

## Contribution Instructions

### Requirements

+ pdflatex
+ biber
+ texlive (preferably full version)

### How to Use?

Run the following when done editing

```
make clean
make
make clean
```

#### Compiling

After editing the `.bib` or `.tex` file run.
This will compile the LaTeX file along with bibliography.
```
make
```

`make` is actually running the following commands. If you wish
to run them manually run the following in sequence

```
pdflatex report.tex
biber report
pdflatex report.tex
pdflatex report.tex
```

#### Cleaning

For deleting the auxiliary files run 
```
make clean
```

#### Cleaning All

For deleting the auxiliary files along with the pdf run 
```
make cleanall
```
