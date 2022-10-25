SHELL = /usr/bin/env bash -o pipefail
.SHELLFLAGS = -ec

.PHONY: repos
repos:
	./scripts/fetch.sh	

	