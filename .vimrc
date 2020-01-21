" UI Config

set number       " show line numbers
set showcmd      " show command in bottom bar
"" set cursorline   " highlight current line
set wildmenu     " visual autocomplete for command menu
syntax on        " enable syntax processing


" Searching

set incsearch    " search as characters are entered
set hlsearch     " highlight matches


" Spaces & Tabs

nmap <F9> :set ignorecase! ignorecase?
set tabstop=4
set shiftwidth=4
set expandtab


" Highlight extra whitespaces
" from https://vim.fandom.com/wiki/Highlight_unwanted_spaces

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

