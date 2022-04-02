set termguicolors
set number
set hidden
set relativenumber
set cursorline
set cursorlineopt=number
set hlsearch
set incsearch
set linebreak
set breakindent
set smartcase

set so=99
set tabstop=4 
set shiftwidth=4

colorscheme spacecamp

" this is for the relativenumber
hi CursorLineNr guifg=yellow

" this turns on spellchecker for LaTeX and markdown files.
autocmd FileType latex,tex,md,markdown setlocal spell

" magical binds
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap j gj
nnoremap k gk

inoremap " ""<left>
"inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0
inoremap {;<CR> {<CR>};<ESC>0

" these magical lines fix vim within tmux
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
