.PHONY: build

build:
	hugo
	cp -rf public/* .
	rm -rf public
