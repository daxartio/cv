.DEFAULT_GOAL := generate

.PHONY: generate
generate:
	@cp ru.yml cv.yml && typst c template.typ ru.pdf
	@cp en.yml cv.yml && typst c template.typ en.pdf
