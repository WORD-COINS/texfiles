LATEX    ?= platex
ifeq ($(LATEX), platex)
LATEXFLAG ?= --kanji=utf8
endif

DVIPDFM   = dvipdfmx
MAKE      = make
YES       = yes

SRC      ?= word


TARGETS  = $(addsuffix .cls, $(SRC)) $(addsuffix .clo, $(SRC))
DOCUMENT = $(addsuffix .pdf, $(SRC))
TEXDTX   = $(addsuffix .dtx, $(SRC))
TEXINS   = $(addsuffix .ins, $(SRC))

.PHONY: all clean lua lua-test

all:
	$(YES) | $(MAKE) $(TARGETS)
	$(YES) | $(MAKE) $(DOCUMENT)

$(TARGETS) : $(TEXINS) $(TEXDTX)
	$(LATEX) $(LATEXFLAG) $<

$(DOCUMENT) : $(TEXDTX)
	$(LATEX) $(LATEXFLAG) $<
	$(LATEX) $(LATEXFLAG) $<
ifeq ($(LATEX), platex)
	$(DVIPDFM) $(SRC)
endif

lua:
	$(MAKE) LATEX=lualatex SRC=word-lua


lua-test:$(SRC)
	lualatex $<

clean:
	-rm *.aux *.cls *.clo *.log *.toc *.dvi *.pdf *.out *.fls > /dev/null 2>&1
