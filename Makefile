# Makefile for report.tex

FILENAME = report
TEX = pdflatex
BIB = biber
NUM_FILES = 0

PDF = $(addsuffix .pdf, $(strip $(FILENAME)))
REF = $(addsuffix .bib, $(strip $(FILENAME)))
EXT = .aux .bbl .bcf .blg .log .out .run.xml .bib.blg .toc
AUX = $(addprefix $(strip $(FILENAME)),$(strip $(EXT)))

.PHONY : all clean cleanall

all: $(PDF)

$(PDF): $(FILENAME).tex $(FILENAME).bib
	@echo "\n==> Building $@"
	@echo "    - pdflatex $< (pass 1/3)"
	@$(TEX) $< > /dev/null
	@echo "    - biber $(REF)"
	@$(BIB) $(FILENAME) > /dev/null
	@echo "    - pdflatex $< (pass 2/3)"
	@$(TEX) $< > /dev/null 
	@echo "    - pdflatex $< (pass 3/3)"
	@$(TEX) $< > /dev/null 
	@echo "==> Success!\n"

.ONESHELL:
gentrend : 
	$(eval NUM_FILES=$(shell ls -d */ | grep trend_ | wc -l))
	$(eval NUM_FILES=$(shell echo $$(($(NUM_FILES)+1))))
	mkdir trend_$(NUM_FILES)
	cd trend_$(NUM_FILES)
	cp ../res/$(FILENAME).* .
	cp ../Makefile .


clean:
	@echo "\n==> Cleaning directory of auxilary files\n"
	@rm -f $(AUX)

cleanall:
	@echo "\n==> Cleaning directory of auxilary files"
	@rm -f $(AUX)
	@echo "==> Removing pdf file\n"
	@rm -f $(PDF)
