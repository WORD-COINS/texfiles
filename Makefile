LATEX     = platex
LATEXFLAG = --kanji=utf8
DVIPDFM = dvipdfmx

DOCUMENT = word.pdf
TARGETS  = word.cls word.clo

TEXDTX = word.dtx
TEXINS = word.ins

$(TARGETS) : % : $(TEXINS) $(TEXDTX)
	$(LATEX) $(LATEXFLAG) $<

$(DOCUMENT) : % : $(TEXDTX)
	$(LATEX) $(LATEXFLAG) $<
	$(LATEX) $(LATEXFLAG) $<
	$(DVIPDFM) $*

clean:
	rm *.aux *.cls *.clo *.log *.toc *.dvi *.pdf *.out *.fls
