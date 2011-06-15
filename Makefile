BUILD_DIR=build
SNIPS_DIR=snippets

MAIN=slides.tex
OUTPUT=slides.pdf
FILES=src/*.tex

${OUTPUT} : ${MAIN} ${FILES}
	pdflatex -output-directory=${BUILD_DIR} ${MAIN}
	cp ${BUILD_DIR}/${OUTPUT} ${OUTPUT}

snippets :
	$(MAKE) -C ${SNIPS_DIR}

clean :
	rm -rf ${BUILD_DIR}/*
	rm ${OUTPUT}

view : ${OUTPUT}
	open ${OUTPUT}

