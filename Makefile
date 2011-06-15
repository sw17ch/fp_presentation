BUILD_DIR=build
SNIPS_DIR=snippets

MAIN=slides.tex
OUTPUT=slides.pdf
FILES=src/*.tex

all : snippets ${OUTPUT}

${OUTPUT} : ${MAIN} ${FILES} snippets
	pdflatex -output-directory=${BUILD_DIR} ${MAIN}
	cp ${BUILD_DIR}/${OUTPUT} ${OUTPUT}

.PHONY : snippets
snippets : 
	$(MAKE) -C ${SNIPS_DIR}

clean :
	rm -rf ${OUTPUT} ${BUILD_DIR}/*
	make -C ${SNIPS_DIR} clean

view : ${OUTPUT}
	open ${OUTPUT}

