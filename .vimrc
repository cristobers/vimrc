" the good stuff
set termguicolors
set ttyfast
set autoread
set number
set hidden
set relativenumber
set cursorline
set hlsearch
set incsearch
set linebreak
set breakindent
set smartcase
set wildmenu " for the <TAB> menu in the command bar
set expandtab " for having all the tab characters turn into space characters

" making the tab length 4
set so=99
set tabstop=4
set shiftwidth=4

" cool theme -> https://raw.githubusercontent.com/jaredgorski/SpaceCamp/master/colors/spacecamp.vim
colorscheme spacecamp

" this is for the relativenumber
hi CursorLineNr guifg=yellow

" this turns on spellchecker for LaTeX and markdown files.
autocmd FileType latex,tex,md,markdown setlocal spell

" magical binds
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap j gj
nnoremap k gk

" these magical lines fix vim within tmux
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" big block cursor youre in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
