" Enable pathogen ------------------------------------------------------------
execute pathogen#infect()
syntax on
filetype plugin indent on

" Normally to generate documentation, Vim expects you to run :helptags on each
" directory with documentation (e.g., :helptags ~/.vim/doc). Provided with
" pathogen.vim is a :Helptags command that does this on every directory in
" your 'runtimepath'. If you really want to get crazy, you could even invoke
" Helptags in your vimrc. I don't like to get crazy
" call pathogen#Helptags()
"
"
"Useful mappings -------------------------------------------------------------
" Next opened buffer
"nmap <S-n> :bnext<CR>
" Previous opened buffer
"nmap <S-b> :bprev<CR>"
" Close current buffer
"nmap <S-d> :bd<CR>
"
" This is need by vim-airline to show up--------------------------------------
set laststatus=2
" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"
"Togge Tagbar-----------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>
"
"Sensible---------------------------------------------------------------------
"Normally, sensible.vim loads after your vimrc, making it a bit tricky to
"override (although you could use after/plugin/sensible.vim). If you want to
"load it earlier, add the following line to you vimrc, then put your overrides
"below.
"
"runtime! plugin/sensible.vim
"
"
"NerdTree---------------------------------------------------------------------
nmap <C-t> :NERDTreeToggle<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Next buffer
nmap <F12> :bn<CR>
" Previous buffer
nmap <F2> :bp<CR>
nmap <Tab>- :sp<CR>
nmap <Tab>\ :vsp<CR>
nmap <C-c> :let @/ = ""<CR>

" Set numbers
set number
set hlsearch
set incsearch
set ignorecase
"set smartcase
set smartindent
"set tabstop=4
"set shiftwidth=4
set expandtab
set hidden " switch buffers without raising an errro message
set splitbelow
set splitright
set cursorline

" Solarized settings
let g:solarized_termcolors=256
colorscheme solarized
" set background=light
set background=dark
call togglebg#map("<F5>")
