SRCS=$(wildcard *.hs)
TEXS=$(SRCS:.hs=.tex)

all : $(TEXS)

%.tex : %.hs
	pygmentize -f latex $< > $@

clean :
	rm -rf *.tex
