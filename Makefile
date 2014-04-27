LATEX     = platex
LATEXFLAG = --kanji=utf8
DVIPDFM   = dvipdfmx
MAKE      = make

SRC = word

TARGETS  = $(addsuffix .cls, $(SRC)) $(addsuffix .clo, $(SRC))
DOCUMENT = $(addsuffix .pdf, $(SRC))
TEXDTX   = $(addsuffix .dtx, $(SRC))
TEXINS   = $(addsuffix .ins, $(SRC))

.PHONY: all clean

all:
	$(MAKE) $(TARGETS)
	$(MAKE) $(DOCUMENT)

$(TARGETS) : $(TEXINS) $(TEXDTX)
	$(LATEX) $(LATEXFLAG) $<

$(DOCUMENT) : $(TEXDTX)
	$(LATEX) $(LATEXFLAG) $<
	$(LATEX) $(LATEXFLAG) $<
	$(DVIPDFM) $(SRC)

clean:
	rm *.aux *.cls *.clo *.log *.toc *.dvi *.pdf *.out *.fls
