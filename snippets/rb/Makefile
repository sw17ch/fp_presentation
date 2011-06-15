SRCS=$(wildcard *.rb)
TEXS=$(SRCS:.rb=.tex)

all : $(TEXS)

%.tex : %.rb
	pygmentize -f latex $< > $@

clean :
	rm -rf *.tex
