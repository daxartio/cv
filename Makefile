.DEFAULT_GOAL := generate

.PHONY: generate
generate:
	typst c ru.typ
	typst c en.typ
