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
