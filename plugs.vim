Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } | Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'sjl/gundo.vim'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'henrik/vim-indexed-search'
Plug 'Raimondi/delimitMate'
Plug 'preservim/tagbar', { 'do': 'npm install -g git+https://github.com/ramitos/jsctags.git' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'honza/vim-snippets'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-endwise'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'yssl/QFEnter'
Plug 'wellle/targets.vim'
Plug 'szw/vim-maximizer'
Plug 'ntpeters/vim-better-whitespace'
Plug 'LucHermitte/lh-vim-lib' | Plug 'LucHermitte/local_vimrc'
Plug 'kristijanhusak/vim-dadbod' | Plug 'kristijanhusak/vim-dadbod-ui'
if has('unix')
  let s:uname = system('uname -s')
  if s:uname =~ 'Darwin'
    Plug 'ybian/smartim'
  endif
endif
if has("nvim")
  Plug 'kassio/neoterm'
end

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'leafgarland/typescript-vim' | Plug 'peitalin/vim-jsx-typescript'
Plug 'cespare/vim-toml'
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'

Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'ajh17/Spacegray.vim'
