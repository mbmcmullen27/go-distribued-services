SHELL = /usr/bin/env bash -o pipefail
.SHELLFLAGS = -ec

.PHONY: repos
repos:
	./scripts/fetch.sh	

.PHONY: push
push:
	./scripts/push.sh	

.PHONY: commit
commit:
	./scripts/commit.sh

.PHONY: test-api
test-api:
	./scripts/test-api