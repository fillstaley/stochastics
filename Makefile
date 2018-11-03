SHELL := /bin/bash
# use bash for <( ) syntax

.PHONY : all notes

all : syllabus.html index.html style.html notes

notes : LectureNotes/Lectures/Fall2018/Lecture1/ASPLecture1.html LectureNotes/Lectures/Fall2018/Lecture3/ASPLecture3.html LectureNotes/Lectures/Fall2018/Lecture4/PPP_notes.html

%.html : %.latexml.html
	mv $< $@

MATHJAX = https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js

# may want to add "--self-contained" to the following
PANDOC_OPTS = --mathjax=$(MATHJAX)?config=TeX-AMS-MML_HTMLorMML --standalone --self-contained
# optionally add in a latex file with macros
LATEX_MACROS = macros.tex
ifeq ($(wildcard $(LATEX_MACROS)),)
	# macros file isn't there
else
	PANDOC_OPTS += -H .pandoc.$(LATEX_MACROS)
endif

.pandoc.$(LATEX_MACROS) : $(LATEX_MACROS)
	(echo '<div style="display: none">'; echo '\['; cat $(LATEX_MACROS); echo '\]'; echo '</div>') > $@

%.html : %.Rmd
	Rscript -e 'templater::render_template("$<", output="$@", change.rootdir=TRUE, clean=FALSE)'

%.html : %.md .pandoc.$(LATEX_MACROS)
	pandoc -o $@ $(PANDOC_OPTS) $<

%.md : %.Rmd
	Rscript -e 'templater::render_template("$<", output="$@", change.rootdir=TRUE)'

%.pdf : %.md
	pandoc -o $@ -t latex $<

%.pandoc.html : %.tex
	pandoc --lua-filter tikz.lua | pandoc -f latex -o $@ -t html $(PANDOC_OPTS)

##########
# LaTeXML

%.xml : %.tex
	latexml --dest=$@ $<

%.latexml.html : %.xml
	latexmlpost --dest=$@ $<

## 
# Graphics whatnot

# save inkscape svg files as .ink.svg and this'll do the right thing
$(DISPLAYDIR)/%.svg : %.ink.svg
	inkscape $< --export-plain-svg=$@

$(DISPLAYDIR)/%.pdf : %.ink.svg
	inkscape $< --export-pdf=$@

$(DISPLAYDIR)/%.svg : %.pdf
	inkscape $< --export-plain-svg=$@

$(DISPLAYDIR)/%.png : %.pdf
	convert -density 300 $< -flatten $@

## things without mathjax

syllabus.html : syllabus.md
	pandoc -o $@ --standalone --self-contained $<


