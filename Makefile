# Some variables
NAME=CARPENTIER
TYPST?=typst
PDF_VIEWER?=evince

# discover sources and map to targets
CV_SRCS:=$(wildcard cv.*.typ)
COVER_SRCS:=$(wildcard cover.*.typ)

# Typst build from root cv.<lang>.typ files
TYP_PDFS:=$(patsubst cv.%.typ,CV_$(NAME)_%.pdf,$(CV_SRCS))

# Typst build from root cover.<lang>.typ files
CL_PDFS:=$(patsubst cover.%.typ,CL_$(NAME)_%.pdf,$(COVER_SRCS))

# single entry-point target builds all PDFs (CV + cover)
all: $(TYP_PDFS) $(CL_PDFS)

# explicit mapping of source -> target using pattern rules
CV_$(NAME)_%.pdf: cv.%.typ img/* *.typ
	$(TYPST) compile --font-path fonts/ $< $@

CL_$(NAME)_%.pdf: cover.%.typ img/* *.typ
	$(TYPST) compile --font-path fonts/ $< $@
# cleaning
clean:
	rm -f *.pdf

# watch for changes and rebuild automatically
watch:
	@echo "Usage: make watch-cv-<lang> or watch-cover-<lang>"

watch-cv-%:
	$(TYPST) watch --font-path fonts/ --open $(PDF_VIEWER) cv.$*.typ CV_$(NAME)_$*.pdf

watch-cover-%:
	$(TYPST) watch --font-path fonts/ --open $(PDF_VIEWER) cover.$*.typ CL_$(NAME)_$*.pdf

.PHONY: clean all watch
