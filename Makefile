# Default target
.PHONY: all
all: build

build:
	go build -v -o goicbgw

.PHONY: clean
clean:
	rm -rf goicbgw

.PHONY: test
test:
	go test ./utils
