.DEFAULT_GOAL := generate

.PHONY: generate
generate:
	pandoc ru.yml -o ru.pdf --template=template.tex --pdf-engine=xelatex
