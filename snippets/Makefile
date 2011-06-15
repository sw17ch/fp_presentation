C_DIR=c/
HS_DIR=hs/
RB_DIR=rb/
PYGMENTS=pygments.tex

all : ${PYGMENTS} c hs rb

pygments.tex : 
	python -c 'import pygments.formatters as f; print f.latex.LatexFormatter().get_style_defs()' > $@

.PHONY : c
c :
	$(MAKE) -C $(C_DIR)

.PHONY : hs
hs :
	$(MAKE) -C $(HS_DIR)

.PHONY : rb
rb :
	$(MAKE) -C $(RB_DIR)

clean :
	rm -rf *.tex
	$(MAKE) -C $(C_DIR) clean
	$(MAKE) -C $(HS_DIR) clean
	$(MAKE) -C $(RB_DIR) clean
