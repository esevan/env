set nu
set title
set ruler
set hlsearch
set incsearch
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
"set textwidth=80
set wrap
set background=dark
syntax on

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

map <s-c> :NERDTreeToggle<cr>
map <tab><tab> <c-w><c-w>
imap <tab><tab> <Esc><C-W><C-W>

map <c-s> :w<cr>
imap <c-s> <esc>:w<cr>

imap <c-c> <esc>

map -- mF<c-u>v<c-f><c-f>=gg'F:w<cr>
