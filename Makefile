
all:
	@make npm
	@make test

npm:
	@npm install

test:
	@( [ -d node_modules ] || make npm )
	@( node ./test/runner )
	@( node ./test/browser-runner )
	@( make jshint )

jshint:
	@( jshint lib/ )
	@( jshint test/ )

.PHONY:	npm
.PHONY:	test
.PHONY:	jshint
