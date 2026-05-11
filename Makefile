# Default target
.PHONY: all
all: build

GIT_HASH := $(shell git rev-parse --short HEAD)

build:
	go build -ldflags="-X goicbgw/version.Version=devel-${GIT_HASH}" -v -o goicbgw

.PHONY: clean
clean:
	rm -rf goicbgw

.PHONY: test
test:
	go test ./utils
