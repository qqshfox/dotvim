if has('nvim')
  let g:editor_root = expand('~/.config/nvim')
else
  let g:editor_root = expand('~/.vim')
endif

if !filereadable(g:editor_root . '/autoload/plug.vim')
  execute '!curl -fLo ' . g:editor_root . '/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin(g:editor_root . '/plugged')

exe 'source' g:editor_root . '/plugs.vim'
if filereadable(g:editor_root . '/plugs.vim.local')
  exe 'source' g:editor_root . '/plugs.vim.local'
endif

call plug#end()

if !exists("g:os")
  if has("win64") || has("win32") || has("win16")
    let g:os = "Windows"
  else
    let g:os = system('uname -s')
  endif
endif

let mapleader = ','

exe 'source' g:editor_root . '/keymap.vim'
exe 'source' g:editor_root . '/settings.vim'
