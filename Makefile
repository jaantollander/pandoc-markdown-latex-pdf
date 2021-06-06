SRCDIR=src
BUILDDIR=build
FILENAME=index
ASSETSDIR=assets

download-assets:
	mkdir $(ASSETSDIR) -p
	wget -O $(ASSETSDIR)/citation-style.csl https://raw.githubusercontent.com/citation-style-language/styles/master/harvard-anglia-ruskin-university.csl

pdf-print:
	mkdir $(BUILDDIR) -p
	pandoc $(SRCDIR)/$(FILENAME).md \
	--resource-path=$(SRCDIR) \
	--citeproc \
	--csl=$(ASSETSDIR)/citation-style.csl \
	--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME)_print.pdf \
	--pdf-engine=xelatex \
	--include-in-header="layout/print.tex" \

pdf-ereader:
	mkdir $(BUILDDIR) -p
	pandoc $(SRCDIR)/$(FILENAME).md \
	--resource-path=$(SRCDIR) \
	--citeproc \
	--csl=$(ASSETSDIR)/citation-style.csl \
	--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME)_ereader.pdf \
	--pdf-engine=xelatex \
	--include-in-header="layout/ereader.tex" \

pdf: pdf-print pdf-ereader
