" Enable pathogen ------------------------------------------------------------
execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible
set encoding=utf-8


function! TimeCmp(time1, time2)
 let [hour1, min1] = split(a:time1, ':')
 let [hour2, min2] = split(a:time2, ':')
 if hour1 != hour2
   return hour1 - hour2
 endif
   return min1 - min2
endfun

" Solarized settings
let g:solarized_termcolors=256
" Default background
set background=dark
colorscheme solarized
if !empty($VIM_DAYLIGHT_START) && !empty($VIM_DAYLIGHT_END)
  if TimeCmp(strftime("%H:%M"), $VIM_DAYLIGHT_START) >= 0 && TimeCmp(strftime("%H:%M"), $VIM_DAYLIGHT_END) <= 0
    set background=light
  else
    set background=dark
  endif
end
call togglebg#map("<F5>")

" Normally to generate documentation, Vim expects you to run :helptags on each
" directory with documentation (e.g., :helptags ~/.vim/doc). Provided with
" pathogen.vim is a :Helptags command that does this on every directory in
" your 'runtimepath'. If you really want to get crazy, you could even invoke
" Helptags in your vimrc. I don't like to get crazy
" call pathogen#Helptags()
"
"
"Useful mappings -------------------------------------------------------------

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
nmap <C-n> :NERDTreeToggle<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Next buffer
nmap <C-k> :bn<CR>
" Previous buffer
nmap <C-j> :bp<CR>
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
set hidden " switch buffers without raising an error message
set splitbelow
set splitright
set cursorline

" Set folding depending on file syntax
set foldmethod=syntax
" Do not fold by default
set nofoldenable

" Undotree mapping
nmap <F6> :UndotreeToggle<CR>
" let undotree window get focus after being opened
let g:undotree_SetFocusWhenToggle = 1
" Window layout (options: 1, 2, 3, 4)
let g:undotree_WindowLayout = 2

" vim-closetag configuration
" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.xml,*.htm"


" TypeScript-Vim: https://github.com/leafgarland/typescript-vim ==============
"
" To disable indenting
" let g:typescript_indent_disable = 1
"
" Automatically indent chained method calls as you type
setlocal indentkeys+=0.
"
" Options to change the compiler name and to insert default options
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
" Make the QuickFix window automatically appear if :make has any errors
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Syntastic: https://github.com/vim-syntastic/syntastic
" Recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif


" Vim-Rainbow
let g:rainbow_active = 1
"let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
"let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
let g:rainbow_guifgs = ['brown', 'Darkblue', 'darkgray', 'darkgreen', 'darkcyan', 'darkred', 'darkmagenta', 'brown', 'gray', 'black', 'darkmagenta', 'Darkblue', 'darkgreen', 'darkcyan', 'darkred', 'red' ]
let g:rainbow_ctermfgs = ['brown', 'Darkblue', 'darkgray', 'darkgreen', 'darkcyan', 'darkred', 'darkmagenta', 'brown', 'gray', 'black', 'darkmagenta', 'Darkblue', 'darkgreen', 'darkcyan', 'darkred', 'red' ]

function! PresentationMode()
 colorscheme default
 set t_ut=
endfun

