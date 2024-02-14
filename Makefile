GEM_TO_PUSH = `ls capy-spec*.gem | tail -n 1`

build:
	gem build capy-spec.gemspec

publish:
	@echo "gem push ${GEM_TO_PUSH}"
	@gem push ${GEM_TO_PUSH}
