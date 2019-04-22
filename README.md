# Trends in Mobile Communications

## Contribution Instructions

### Requirements

+ pdflatex
+ biber
+ texlive (preferably full version)

### How to Use?

- To create a new trend run the following command while in root directory of repo

    ```
    make gentrend
    ```

- Now cd into the newly created trend directory and make the changes you want.

- Run the following when done editing

    ```
    make clean
    make
    make clean
    ```

#### Compiling

After editing the `.bib` or `.tex` file run `make`.
This will compile the LaTeX file along with bibliography.

`make` is actually running the following commands in sequence.

```
pdflatex report.tex
biber report
pdflatex report.tex
pdflatex report.tex
```

#### Cleaning

For deleting the auxiliary files run `make clean`.

#### Cleaning All

For deleting the auxiliary files along with the pdf run `make cleanall`.
