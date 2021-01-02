.PHONY: install

install: install_dependencies install_rust

install_rust:
	rustup component add rls rust-analysis rust-src

install_dependencies:
	brew bundle

