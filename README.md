# Hanfei Shen' dotvim

[neovim](https://neovim.io/) is recommanded. [vim](https://www.vim.org/) is also supported but with some limits.

## Installation

```bash
mkdir -p ~/.config
git clone https://github.com/qqshfox/dotvim.git ~/.config/vim
nvim -c 'PlugInstall'
```

## Requirements

* [neovim HEAD](https://neovim.io/)
* [luajit HEAD](https://luajit.org/)
* [universal-ctags](https://github.com/universal-ctags/ctags)
* [base16-shell](https://github.com/chriskempson/base16-shell) for [base16-vim](https://github.com/chriskempson/base16-vim)
* [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) for
  + [airline](https://github.com/vim-airline/vim-airline/)
  + [VimDevIcons](https://github.com/ryanoasis/vim-devicons)
* [Ripgrep](https://github.com/BurntSushi/ripgrep)

## Update

```bash
git pull
nvim -c 'PlugUpdate'
```
