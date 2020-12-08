if $TERM_PROGRAM == "vscode" || !filereadable(expand("~/.vimrc_background"))
  let g:solarized_termcolors=256
  set background=dark
  colorscheme solarized
else
  let base16colorspace=256
  source ~/.vimrc_background
endif
