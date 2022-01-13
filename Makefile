.PHONY: help
help:
	# http://postd.cc/auto-documented-makefile/
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: setup
setup: ## download mitamae
	bin/setup

.PHONY: cleanup
cleanup: ## cleanup mitamae
	bin/cleanup

.PHONY: install
install: ## execute install
	./install.sh
