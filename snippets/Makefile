PYGMENTS=pygments.tex
SNIPPETS=procedural.tex

all : ${SNIPPETS} ${PYGMENTS}

pygments.tex : 
	python -c 'import pygments.formatters as f; print f.latex.LatexFormatter().get_style_defs()' > $@

procedural.tex : procedural.c pygments.tex 
	pygmentize -f latex $< > $@

clean :
	rm -rf *.tex
