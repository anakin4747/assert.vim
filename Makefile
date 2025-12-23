
.PHONY: nix
nix:
	@nix develop --command make --no-print-directory test

NVIM_ARGS = --headless
_VIM_ARGS = -N -i NONE -es -V1
ARGS = --noplugin -u tests/init.vim -c "Assert runall"

.PHONY: test
test:
	@nvim $(NVIM_ARGS) $(ARGS)
	@vim  $(_VIM_ARGS) $(ARGS)
