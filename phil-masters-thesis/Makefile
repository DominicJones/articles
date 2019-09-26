report_name := thesis

all: report

report:
	@pdflatex $(report_name).tex
	@makeglossaries $(report_name)
	@bibtex $(report_name).aux
	@pdflatex $(report_name).tex
	@makeglossaries $(report_name)
	@bibtex $(report_name).aux
	@pdflatex $(report_name).tex

.PHONY: clean
clean:
	@rm -f *.aux *.toc *.log *.lot *.xml *.lof
	@rm -f *.blg *.bbl *.bcf *-blx.bib
	@rm -f *.gls *.glg *.glo *.alg *.acr *.acn *.ist
	@rm -f *~


.PHONY: distclean
distclean:
	$(MAKE) clean
	@rm -f $(report_name).pdf
