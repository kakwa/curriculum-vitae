# Some variables
NAME=CARPENTIER

# recover all the languages
ifeq ("$(CV_LANG)", "")
ALL_LANG=$(shell find ./* -maxdepth 0 -type d -exec basename {} \; |grep -v 'out\|picture')
else
ALL_LANG=$(CV_LANG)
endif

PDF_LANG=$(addsuffix .pdf,$(addprefix CV_CARPENTIER_,$(ALL_LANG)))
SRC_LANG=$(addsuffix /cv.tex,$,$(ALL_LANG))

all: $(PDF_LANG)

$(PDF_LANG): $(SRC_LANG)
	cd $(subst CV_CARPENTIER_,,$(subst .pdf,,$@)) && \
	xelatex -interaction=batchmode cv.tex && \
	mv cv.pdf ../$@

# cleaning
clean:
	rm -f *.pdf
	rm -f cv.*

.PHONY: clean all
