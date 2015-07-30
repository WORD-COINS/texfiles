MAKE       = make

LATEX     ?= platex
LATEXFLAG ?= --kanji=utf8
LATEXFLAG += -halt-on-error

DVIPDFM   ?= dvipdfmx

SRC       ?= word

ifeq ($(SRC),word-lua)
	LATEX = lualatex
	LATEXFLAG =
	DVIPDFM = :
endif

TARGETS  = $(addsuffix .cls, $(SRC)) $(addsuffix .clo, $(SRC))
DOCUMENT = $(addsuffix .pdf, $(SRC))
TEXDTX   = $(addsuffix .dtx, $(SRC))
TEXINS   = $(addsuffix .ins, $(SRC))

.PHONY: all doc doc-lua clean word-lua word

word:
	$(MAKE) all

doc:
	$(MAKE) $(DOCUMENT)

doc-lua:
	SRC=word-lua $(MAKE) doc

all:
	$(MAKE) $(TARGETS)

$(TARGETS) : $(TEXINS) $(TEXDTX)
	$(LATEX) $(LATEXFLAG) $<

$(DOCUMENT) : $(TEXDTX)
	$(LATEX) $(LATEXFLAG) $<
	$(LATEX) $(LATEXFLAG) $<
	$(DVIPDFM) $(SRC)

word-lua:
	SRC=word-lua $(MAKE)

clean:
	rm *.aux *.cls *.clo *.log *.toc *.dvi *.pdf *.out *.fls

