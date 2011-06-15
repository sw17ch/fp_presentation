SRCS=$(wildcard *.c)
TEXS=$(SRCS:.c=.tex)

all : $(TEXS)

%.tex : %.c
	pygmentize -f latex $< > $@

clean :
	rm -rf *.tex
