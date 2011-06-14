BUILD_DIR=build/

slides.pdf : slides.tex
	pdflatex slides.tex -output-directory=${BUILD_DIR}
