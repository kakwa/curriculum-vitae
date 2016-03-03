# Some variables
NAME=CARPENTIER
BUILD=./out/

# recover all the languages
ALL_LANG=$(shell find ./* -maxdepth 0 -type d |grep -v 'out\|picture')
pdf_LANG=$(addprefix pdf_,$(ALL_LANG))

# build all the languages
all: $(pdf_LANG)

$(pdf_LANG):
	mkdir -p $(BUILD)/
	cd $(patsubst pdf_%,%,$@) &&\
	xelatex -interaction=batchmode cv.tex &&\
	mv cv.pdf ../$(BUILD)/CV_$(NAME)_$(patsubst pdf_./%,%,$@).pdf

# build a specific language 
# must be passed like: make pdf LANG=<target language>
pdf:
	echo $(LANG)
	mkdir -p $(BUILD)/
	cd $(LANG) &&\
	xelatex -interaction=batchmode cv.tex &&\
	mv cv.pdf ../$(BUILD)/CV_$(NAME)_$(LANG).pdf

# cleaning
clean:
	echo $@
	rm -rf $(BUILD)/

.PHONY: $(pdf_LANG) clean all pdf
