# Hanfei's dotvim

[Neovim](https://neovim.io/) 0.5+ is required.

## Installation

```console
mkdir -p ~/.config
git clone https://github.com/qqshfox/dotvim.git ~/.config/nvim
nvim -c 'PackerSync'
```

## Requirements

* [Tree-sitter](https://tree-sitter.github.io/tree-sitter/)
* [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
* Python
  - [pylsp](https://github.com/python-lsp/python-lsp-server)
    ```console
    pipx install python-lsp-server
    pipx inject python-lsp-server pylsp-mypy python-lsp-black pyls-isort
    ```

## Update

```console
git pull
nvim -c 'PackerSync'
```
