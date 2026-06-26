# Makefile para la Plantilla TFG/TFM de la UGR

###################
# Configuracion
###################

PROJECT = main

# Comando mágico (latexmk) que compila todo de una vez
LATEXMK = latexmk -pdf -synctex=1 -interaction=nonstopmode -file-line-error

.PHONY: all clean cleanall

# Cuando el usuario escriba "make", compilará el PDF
all: $(PROJECT).pdf

$(PROJECT).pdf: $(PROJECT).tex
	$(LATEXMK) $(PROJECT)

# Cuando el usuario escriba "make clean", borrará los archivos basura
clean:
	latexmk -c

# Borra los archivos basura y también el PDF final
cleanall:
	latexmk -C
