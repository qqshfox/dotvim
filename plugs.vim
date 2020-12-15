Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': './install --bin' } | Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'sjl/gundo.vim'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdcommenter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'henrik/vim-indexed-search'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar', { 'do': 'npm install -g git+https://github.com/ramitos/jsctags.git' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
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
Plug 'bogado/file-line'
Plug 'LucHermitte/lh-vim-lib' | Plug 'LucHermitte/local_vimrc'
if has('unix')
  let s:uname = system('uname -s')
  if s:uname =~ 'Darwin'
    Plug 'ybian/smartim'
  endif
endif
if has("nvim")
  Plug 'kassio/neoterm'
end

if has("nvim") || v:version >= 800
  Plug 'dense-analysis/ale'
else
  Plug 'vim-syntastic/syntastic'
endif
if has("nvim")
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  \ | Plug 'zchee/deoplete-go', { 'do': 'make', 'for': 'go' }
  \ | Plug 'zchee/deoplete-jedi', { 'for': 'python' }
  \ | Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': 'javascript' }
  \ | Plug 'fishbullet/deoplete-ruby', { 'for': 'ruby' }
  Plug 'Rip-Rip/clang_complete', { 'do': 'nvim -c \"r! git ls-files autoload bin doc plugin\" -c \"$$,$$d _\" -c \"%MkVimball! $@ .\" -c \"q!\" && nvim &< -c \"so %\" -c \"q\"' }
else
  Plug 'Valloric/YouCompleteMe'
  \ | Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
  Plug 'davidhalter/jedi-vim', { 'for': 'python' }
end
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'leafgarland/typescript-vim' | Plug 'peitalin/vim-jsx-typescript'
Plug 'cespare/vim-toml'

Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'ajh17/Spacegray.vim'
