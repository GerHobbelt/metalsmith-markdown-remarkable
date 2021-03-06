
all: node_modules test

node_modules: package.json
	@npm install

test: node_modules
	@./node_modules/.bin/mocha --reporter spec

test-debug: node_modules
	@DEBUG=* ./node_modules/.bin/mocha --reporter spec

.PHONY: all test test-debug node_modules
