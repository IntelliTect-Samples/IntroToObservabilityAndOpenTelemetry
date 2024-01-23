make:
	npx @marp-team/marp-cli@latest --html slides.md -o index.html

.PHONY: serve
serve:
	python3 -m http.server
