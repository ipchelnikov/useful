" UI Config
"
set number       " show line numbers
set showcmd      " show command in bottom bar
set wildmenu     " visual autocomplete for command menu
syntax on        " enable syntax processing

" Searching
"
set incsearch    " search as characters are entered
set hlsearch     " highlight matches

" Spaces & Tabs
"
nmap <F9> :set ignorecase! ignorecase?
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight extra whitespaces
" from https://vim.fandom.com/wiki/Highlight_unwanted_spaces

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" Clang format integration
map <C-K> :py3f /usr/share/clang/clang-format-6.0/clang-format.py<cr>
imap <C-K> <c-o>:py3f /usr/share/clang/clang-format-6.0/clang-format.py<cr>
