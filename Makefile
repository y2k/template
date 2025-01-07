OUT_DIR := .github/bin

.PHONY: test
test:
	@ export OCAMLRUNPARAM=b && \
		clj2js compile -target repl -src test/test.clj

.PHONY: clean
clean:
	@ rm -rf $(OUT_DIR)

.PHONY: init
init:
	@ rm -rf .git && rm -rf vendor && rm -f .gitmodules && git init .
	@ git submodule add git@github.com:y2k/packages.git vendor
