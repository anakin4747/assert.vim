
.PHONY: nix
nix:
	nix develop --command make test

.PHONY: test
test:
	./tests/runall_nvim
	./tests/runall_vim
