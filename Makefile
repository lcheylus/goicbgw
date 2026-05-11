# Default target
.PHONY: all
all: build

GIT_HASH := $(shell git rev-parse --short HEAD)
LDFLAGS := -X 'goicbgw/version.Version=devel ($(GIT_HASH))'

build:
	go build -ldflags="$(LDFLAGS)" -v -o goicbgw

.PHONY: clean
clean:
	rm -rf goicbgw

.PHONY: test
test:
	go test ./utils
