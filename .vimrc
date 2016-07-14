set nu
set autoindent
set cindent
set smartindent
set wrap
set ruler
set title
set hlsearch
set incsearch
set tabstop=4
set sw=4
syntax on
set background=dark


map 1 mA
map 2 mB
map 3 mC
map 4 mD
map 5 mE

map 11 :w<CR>'A
map 22 :w<CR>'B
map 33 :w<CR>'C
map 44 :w<CR>'D
map 55 :w<CR>'E
map `` :e#<CR>

map <s-c> :vs./<CR>
map <tab><tab> <c-w><c-w>
imap <tab><tab> <Esc><C-W><C-W>

map <c-s> :w<cr>
imap <c-s> <esc>:w<cr>

imap <c-c> <esc>

map -- mF<c-u>v<c-f><c-f>=gg'F:w<cr>

