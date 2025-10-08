# Some variables
NAME=CARPENTIER
TYPST?=typst

# recover language from CV_LANG or infer from cv.<lang>.typ files
ifeq ("$(CV_LANG)", "")
ALL_LANG=$(shell ls cv.*.typ 2>/dev/null | sed -E 's/cv\.([^.]+)\.typ/\1/')
else
ALL_LANG=$(CV_LANG)
endif

# Typst build from root cv.<lang>.typ files
TYP_PDFS=$(addsuffix .pdf,$(addprefix CV_$(NAME)_,$(ALL_LANG)))

all: typst

typst: $(TYP_PDFS)

$(TYP_PDFS): picture/ID.jpg
	$(TYPST) compile cv.$(subst CV_$(NAME)_,,$(subst .pdf,,$@)).typ $@

# cleaning
clean:
	rm -f *.pdf
	rm -f cv.*

.PHONY: typst clean all
