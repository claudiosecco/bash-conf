" Example ~/.vimrc
" 2015.10

" Required for vim to be iMproved
set nocompatible

" Determines filetype from name to allow intelligent auto-indenting, etc.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Use case insensitive search except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no file-specific indenting is enabled,
" keep same indent as the line you're currently on
set autoindent

" Display line numbers on the left
set number

" Indentation options, change according to personal preference
" Number of visual spaces per TAB
set tabstop=2

" Number of spaces in TAB when editing
set softtabstop=2

" Number of spaces indented when reindent operations (>> and <<) are used
set shiftwidth=2

" Convert TABs to spaces
set expandtab

" Enable intelligent tabbing and spacing for indentation and alignment
set smarttab

" make working directory always the same as the editing file
" set autochdir

" highlight searchs
set hlsearch

" visual 80th column"
highlight ColorColumn ctermbg=gray
set colorcolumn=80

" open NERDTree with Ctrl + \
map <C-\> :NERDTreeToggle<CR>

" better command to paste from x clipboard
map <C-p> "+gP

" disable auto comment in new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" some auto-closers
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap ,,% <%  %><left><left><left>
inoremap ,,= <%=  %><left><left><left>
inoremap ,,div <div><CR></div><ESC>O
inoremap ,,h <></><left><left><left><left>
inoremap ,,def def<CR>end<ESC>O
inoremap ,,do do<CR>end<ESC>O
inoremap ,,cl class<CR>end<ESC>O
inoremap ,,if if<CR>end<ESC>O

" prevents vim colors look different inside tmux
set background=dark
