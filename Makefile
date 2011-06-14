BUILD_DIR=build

MAIN=slides.tex
OUTPUT=slides.pdf
FILES=src/*.tex

${OUTPUT} : ${MAIN} ${FILES}
	pdflatex -output-directory=${BUILD_DIR} ${MAIN}
	# pdflatex -output-directory=${BUILD_DIR} slides.tex
	# pdflatex -output-directory=${BUILD_DIR} slides.tex
	cp ${BUILD_DIR}/${OUTPUT} ${OUTPUT}

clean :
	rm -rf ${BUILD_DIR}/*
	rm ${OUTPUT}

view : ${OUTPUT}
	open ${OUTPUT}
