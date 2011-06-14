BUILD_DIR=build

slides.pdf : slides.tex
	pdflatex -output-directory=${BUILD_DIR} slides.tex
	pdflatex -output-directory=${BUILD_DIR} slides.tex
	pdflatex -output-directory=${BUILD_DIR} slides.tex
	cp ${BUILD_DIR}/slides.pdf slides.pdf

clean :
	rm -rf ${BUILD_DIR}/*
	rm slides.pdf

view : slides.pdf
	open slides.pdf
