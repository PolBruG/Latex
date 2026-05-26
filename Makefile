# Makefile d'instal·lació local de Snippets LaTeX

PACKAGES=\
	paletaupc.sty \
	bolaupc.sty \
	fullupc.sty \
	exercici.sty \
	ccbyncsa.sty \
	beamercolorthemeupc.sty \
	lst-avr.sty \
	lst-common.sty \
	lst-c.sty \
	lst-erlang.sty \
	lst-make.sty \
	lst-python.sty \
	lst-shell.sty \
	lst-sql.sty \
	lst-vhdl.sty
CLASSES=\
        acord.cls \
	control.cls \
	iticslides.cls \
	practicaitic.cls \
	xuletari.cls
CONFIGS=\
	sebasletter.lco
DOCS=\
        snippetsltx.pdf \
        README


LOCAL_TEXMF=$(HOME)/texmf
LOCAL_PACKCLASS=$(LOCAL_TEXMF)/tex/latex/misc
LOCAL_CONFIG=$(LOCAL_TEXMF)/tex/latex/local
LOCAL_DOC=$(LOCAL_TEXMF)/doc/snippets


.PHONY: do-install
do-install: $(addprefix $(LOCAL_PACKCLASS)/, $(PACKAGES)) \
         $(addprefix $(LOCAL_PACKCLASS)/, $(CLASSES))  \
         $(addprefix $(LOCAL_CONFIG)/, $(CONFIGS)) \
         $(addprefix $(LOCAL_DOC)/, $(DOCS)) \
	 reindex

$(LOCAL_PACKCLASS)/% : %
	@if [ ! -d $(LOCAL_PACKCLASS) ]; then mkdir -p $(LOCAL_PACKCLASS); fi
	cp $< $@

$(LOCAL_CONFIG)/% : %
	@if [ ! -d $(LOCAL_CONFIG) ]; then mkdir -p $(LOCAL_CONFIG); fi
	cp $< $@

.PHONY: reindex
reindex:
	(cd $(LOCAL_TEXMF)/tex; mktexlsr .)

$(LOCAL_DOC)/% : %
	@if [ ! -d $(LOCAL_DOC) ]; then mkdir -p $(LOCAL_DOC); fi
	cp $< $@


# Usa la jerarquia estàndard definida per kpsepath, tal i com es defineix
# a https://www.tug.org/texinfohtml/kpathsea.html
#
# ~/texmf/tex/latex/misc
# ~/texmf/tex/local
# ~/texmf/tex/doc/snippets
