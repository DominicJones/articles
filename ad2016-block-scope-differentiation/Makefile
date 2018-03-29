report_name := main

all: report

report:
	@pdflatex $(report_name).tex
	@bibtex $(report_name).aux
	@pdflatex $(report_name).tex
	@bibtex $(report_name).aux
	@pdflatex $(report_name).tex

.PHONY: clean
clean:
	@rm -f *.aux *.toc *.log *.blg *.bbl *.out *~

.PHONY: distclean
distclean:
	$(MAKE) clean
	@rm -f $(report_name).pdf
