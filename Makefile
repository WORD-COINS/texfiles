MAKE        = make

LATEX      ?= platex
LUALATEX   ?= lualatex
LATEXFLAG   = --kanji=utf8 -halt-on-error

DVIPDFM    ?= dvipdfmx

SRC         = word
SRCLUA      = word-lua

TARGETS     = $(addsuffix .cls, $(SRC)) $(addsuffix .clo, $(SRC))
DOCUMENT    = $(addsuffix .pdf, $(SRC))
TEXDTX      = $(addsuffix .dtx, $(SRC))
TEXINS      = $(addsuffix .ins, $(SRC))

TARGETSLUA  = $(addsuffix .cls, $(SRCLUA))
DOCUMENTLUA = $(addsuffix .pdf, $(SRCLUA))
TEXDTXLUA   = $(addsuffix .dtx, $(SRCLUA))
TEXINSLUA   = $(addsuffix .ins, $(SRCLUA))

.PHONY: all doc doc-lua clean word-lua word

.DEFAULT_GOAL := all

word: $(TARGETS)
	$(MAKE) $(TARGETS)

word-lua: $(TARGETSLUA)
	$(MAKE) $(TARGETSLUA)

doc: $(DOCUMENT)
	$(MAKE) $(DOCUMENT)

doc-lua: $(DOCUMENTLUA)
	$(MAKE) $(DOCUMENTLUA)

all: $(TARGETS) $(TARGETSLUA) $(DOCUMENT) $(DOCUMENTLUA)

$(TARGETS) : $(TEXINS) $(TEXDTX)
	$(LATEX) $(LATEXFLAG) $(TEXINS)

$(DOCUMENT) : $(TEXDTX)
	$(LATEX) $(LATEXFLAG) $(TEXDTX)
	$(LATEX) $(LATEXFLAG) $(TEXDTX)
	$(DVIPDFM) $(SRC)

$(TARGETSLUA) : $(TEXINSLUA) $(TEXDTXLUA)
	$(LUALATEX) $(TEXINSLUA)

$(DOCUMENTLUA) : $(TEXDTXLUA)
	$(LUALATEX) $(TEXDTXLUA)
	$(LUALATEX) $(TEXDTXLUA)

clean:
	rm *.aux *.cls *.clo *.log *.toc *.dvi *.pdf *.out *.fls

