SHELL = /usr/bin/env bash -o pipefail
.SHELLFLAGS = -ec

.PHONY: repos
repos:
	./scripts/fetch.sh	

.PHONY: push
push: commit
	git commit -a --allow-empty-message -m "$M" 
	git push
	./scripts/push.sh

.PHONY: commit
commit:
	./scripts/commit.sh "$M" || echo "Problem committing sub repos"

.PHONY: test-api
test-api: 
	./scripts/test.sh
