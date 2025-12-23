
.PHONY: nix
nix:
	@nix develop --command make --no-print-directory test

.PHONY: test
test:
	@./tests/runner
