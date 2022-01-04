set termguicolors
set number
set relativenumber

set cursorline
set cursorlineopt=number

set hlsearch
set nowrap
set smartindent
set so=99

colorscheme spacecamp
"hi CursorLine guibg=#222222 gui=none

" this is for the relativenumber
hi CursorLineNr guifg=yellow

" this turns on spellchecker for LaTeX and markdown files.
autocmd FileType latex,tex,md,markdown setlocal spell
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" these magical lines fix vim within tmux
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
