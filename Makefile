default: lint test
.PHONY: default

test:
	bats ./tests
.PHONY: test

lint:
	shellcheck ./tests/*.sh ./tests/*.bats
.PHONY: lint

install:
	cp nai ~/.local/bin/nai
.PHONY: install

release:
	git tag "v$(shell ./nai --version)"
	git push --tags
	gh release create "v$(shell ./nai --version)" --draft --generate-notes --latest
	gh release upload "v$(shell ./nai --version)" ./nai --clobber
.PHONY: release
