.DEFAULT_GOAL=help
include ${PWD}/docs/Makefile
PIP_INSTALL := pip install -r

.PHONY: docs

install: # Install dependencies
	@${PIP_INSTALL} requirements/dev.txt -e .

check: # Check for inconsistencies using Black Formatter
	@black --check --diff .

format: # Format all the inconsistencies
	@black .

test: # Run tests
	@pytest -vvv


help: # Show this help
	@egrep -h '\s#\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'


compile-linear: # Compile linear
	@GOOS=windows GOARCH=amd64 go build -o bin/app-amd64.exe app.go
	@GOOS=darwin GOARCH=amd64 go build -o bin/app-amd64-darwin app.go
	@GOOS=linux GOARCH=amd64 go build -o bin/app-amd64-linux app.go


# OPTIONAL SECTION
# Parallel Build of Go binary using multiple processors.
compile-windows:
	@GOOS=windows GOARCH=amd64 go build -o bin/app-amd64.exe app.go

compile-osx:
	@GOOS=darwin GOARCH=amd64 go build -o bin/app-amd64-darwin app.go

compile-linux:
	@GOOS=linux GOARCH=amd64 go build -o bin/app-amd64-linux app.go

compile: # Compile parallel
	@${MAKE} -j 3 compile-windows compile-linux compile-osx
