BUILD=./out/
LANG=en

all:
	

#cp fontawesome/* $(BUILD)/
pdf:
	mkdir -p $(BUILD)/
	cp $(LANG)/cv.tex $(BUILD)/
	cp ./picture/ID.jpg $(BUILD)/
	cd $(BUILD)/ && \
	lualatex -interaction=batchmode cv.tex

clean:
	rm -rf $(BUILD)/
