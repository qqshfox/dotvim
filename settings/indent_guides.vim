if get(g:, 'colors_name', 'unknown') == 'inkpot' && !has("gui_running")
  let g:indent_guides_auto_colors = 0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=233
else
  let g:indent_guides_auto_colors = 1
endif

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['nerdtree', 'tagbar']
