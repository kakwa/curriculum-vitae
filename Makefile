# Some variables
NAME=CARPENTIER
TYPST?=typst
PDF_VIEWER?=evince

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

$(TYP_PDFS): img/*
	$(TYPST) compile --font-path fonts/ cv.$(subst CV_$(NAME)_,,$(subst .pdf,,$@)).typ $@

# cleaning
clean:
	rm -f *.pdf

# watch for changes and rebuild automatically
watch:
	@echo "Watching for changes in .typ files..."
	@if [ -z "$(CV_LANG)" ]; then \
		echo "Please specify CV_LANG (e.g., make watch CV_LANG=en)"; \
		exit 1; \
	fi
	$(TYPST) watch --font-path fonts/ --open $(PDF_VIEWER) cv.$(CV_LANG).typ CV_$(NAME)_$(CV_LANG).pdf

.PHONY: typst clean all watch
