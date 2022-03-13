build:
	Rscript -e 'bookdown::render_book("_output.yml")' --no-save --vanilla

serve:
	Rscript -e 'bookdown::serve_book()' --no-save --vanilla
