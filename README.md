# Hanfei Shen' dotvim

[neovim](https://neovim.io/) is recommanded. [vim](https://www.vim.org/) is also supported but with some limits.

## Installation

```bash
mkdir -p ~/.config
git clone https://github.com/qqshfox/dotvim.git ~/.config/nvim
nvim -c 'PlugInstall'
```

## Requirements

* [neovim](https://neovim.io/)
* [jsctags](https://github.com/ramitos/jsctags) for [tagbar](https://github.com/majutsushi/tagbar)
* [universal-ctags](https://github.com/universal-ctags/ctags)
* [base16-shell](https://github.com/chriskempson/base16-shell) for [base16-vim](https://github.com/chriskempson/base16-vim)
* [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) for
  + [airline](https://github.com/vim-airline/vim-airline/)
  + [VimDevIcons](https://github.com/ryanoasis/vim-devicons)
* [the_platinum_searcher(pt)](https://github.com/monochromegane/the_platinum_searcher) or [the_silver_searcher(ag)](https://github.com/ggreer/the_silver_searcher)

## Update

```bash
git pull
nvim -c 'PlugUpdate'
```
