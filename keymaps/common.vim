" Save ESC
inoremap jj <ESC>
cnoremap jj <C-c>

" Ease little finger
nnoremap ; :
nnoremap ;; :!

" Movements
nnoremap <UP> g<UP>
nnoremap <DOWN> g<DOWN>

nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

inoremap <C-a> <C-O><S-i>
inoremap <C-e> <End>
inoremap <C-b> <LEFT>
inoremap <C-f> <RIGHT>
inoremap <C-h> <BACKSPACE>
inoremap <C-d> <DELETE>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <UP>
cnoremap <C-n> <DOWN>
cnoremap <C-b> <LEFT>
cnoremap <C-f> <RIGHT>
cnoremap <C-h> <BACKSPACE>
cnoremap <C-d> <DELETE>

" Paste mode
set pastetoggle=<F2>

" Search
nnoremap <silent> <leader><space> :noh<cr>

" Disable help
inoremap <F1> <NOP>
nnoremap <F1> <NOP>
vnoremap <F1> <NOP>

" Save
nnoremap <silent> <leader>w :w<CR>
command! W exec 'w !sudo tee % > /dev/null' | e!

" Tabs
nnoremap <S-h> gT
nnoremap <S-l> gt
nnoremap <silent> <C-t> :tabnew<CR>

" Format
vnoremap < <gv
vnoremap > >gv

" Resize panes
nnoremap <silent> <M-[> :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
nnoremap <silent> <M-]> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <M-{> :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <M-}> :exe "resize " . (winheight(0) * 3/2)<CR>

inoremap <M--> -><space>
inoremap <M-=> =><space>
