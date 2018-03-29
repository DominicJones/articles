report_name := report

all: compute postprocess report

compute:
	cat input.dat | xargs dmd -run compute.d > output.dat

postprocess:
	@gnuplot graph.gp

report:
	@pdflatex $(report_name).tex
	@bibtex $(report_name).aux
	@pdflatex $(report_name).tex
	@bibtex $(report_name).aux
	@pdflatex $(report_name).tex

.PHONY: clean
clean:
	@rm -f output.dat
	@rm -f graph.eps graph.pdf
	@rm -f *.aux *.toc *.log *.blg *.bbl *.out *~

.PHONY: distclean
distclean:
	$(MAKE) clean
	@rm -f $(report_name).pdf
