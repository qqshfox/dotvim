let tmpdir = g:editor_root . '/tmp'
if has('nvim')
  let tmpdir2 = tmpdir . '/nvim'
else
  let tmpdir2 = tmpdir . '/vim'
endif

exe 'set viminfo+=n' . tmpdir2 . '/viminfo'

exe 'set directory=' . tmpdir . '/swap//'

set undofile
exe 'set undodir=' . tmpdir . '/vimundo'

autocmd! bufwritepost plugs.vim source %

set mouse=a

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Exit vim if last buffer is closed which is not buftype=nofile or buftype=quickfix
" https://superuser.com/a/634193
"au QuitPre * exe "lclose|cclose" " cclose caused crash

set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*,__pycache__
