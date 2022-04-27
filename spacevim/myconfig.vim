"===============================================================================================
" My Custom Vim Settings
"===============================================================================================
function! myconfig#after() abort
"===============================================================================================
" Personal Settings
"===============================================================================================
set signcolumn=yes
set nohlsearch nobackup noswapfile
set wrap
set splitbelow splitright
set tabstop=4 softtabstop=4 shiftwidth=4
set smartindent
set incsearch
set scrolloff=8
set cursorline
" highlight Normal guibg=none
" Fix transparent background in Vim/ Neovim:
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
"===============================================================================================
" Custom Keybindings
"===============================================================================================
nnoremap <C-w> :w<CR>
nnoremap <C-q> :q!<CR>
nnoremap <C-x> :wq<CR>
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> : vertical resize -2<CR>
"xnoremap K :move '<-2<CR>gv-gv
"xnoremap J :move '>+1<CR>gv-gv
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
nnoremap <C-J> yyp
nnoremap <C-K> yyP
"===============================================================================================
" Colorschemes Shortcuts
"===============================================================================================
map <F1> :colorscheme gruvbox<CR>
map <F2> :colorscheme onedark<CR>
map <F3> :colorscheme nord<CR>
map <F4> :colorscheme hybrid<CR>
map <F5> :colorscheme jellybeans<CR>
map <F6> :colorscheme murphy<CR>
map <F7> :colorscheme palenight<CR>
map <F8> :colorscheme srcery<CR>
map <F9> :colorscheme space-vim-dark<CR>
map <F10> :colorscheme PaperColor<CR>
"===============================================================================================
endfunction

" Na SpaceVim.vim, personal configs a partir da linha 1405
