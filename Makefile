
.PHONY: test
test:
	@echo "running neovim tests"
	@nix develop --option warn-dirty false \
		--command nvim \
			--noplugin \
			--headless \
			-u tests/init.vim \
			-c "Assert runall ./tests" \
			-c "quit"
	@echo
	@echo "running vim tests"
	@nix develop --option warn-dirty false \
		--command vim \
			--noplugin \
			-es \
			-V1 \
			-u tests/init.vim \
			-c "Assert runall ./tests" \
			-c "quit"
