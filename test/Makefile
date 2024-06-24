JSONNET_BIN ?= jsonnet

jsonnetfile.json:
	@jb init
	@jb install github.com/jsonnet-libs/testonnet

vendor jsonnetfile.lock.json: jsonnetfile.json
	@jb install

.PHONY:
test: vendor jsonnetfile.lock.json
	@RESULT=0; \
	for f in $$(find . -path './.git' -prune -o -name 'vendor' -prune -o -name '*_test.jsonnet' -print); do \
		echo "$$f"; \
		$(JSONNET_BIN) -J ../vendor -J ../lib -J vendor -J lib "$$f"; \
		RESULT=$$(($$RESULT + $$?)); \
	done; \
	exit $$RESULT
