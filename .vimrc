" -----------------------------------------------------------------------------
"     - VIM defaults -
" -----------------------------------------------------------------------------
set nocompatible
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
"
set splitright


" -----------------------------------------------------------------------------
"     - Visual VIM defaults -
" -----------------------------------------------------------------------------
" colorscheme
colorscheme desert
" Show the filename in the window titlebar
set title
" Show the cursor position
set ruler
" Numbered lines
set number
set relativenumber
"
set cursorline
" Max length of a line, visualized
set colorcolumn=110
set wrap

" Show “invisible” characters
set lcs=tab:>-,trail:·,eol:$,nbsp:_,extends:>,precedes:<
set list

" -----------------------------------------------------------------------------
"     - Search -
" -----------------------------------------------------------------------------
" Add the g flag to search/replace by default
set gdefault
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
set smartcase
" Highlight dynamically as pattern is typed
set incsearch
" Clear search highlight
nnoremap <F3> :set hlsearch!<CR>


" -----------------------------------------------------------------------------
"     - Navigation -
" -----------------------------------------------------------------------------
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>
noremap <F1> :echo "--- lol, accidental F1 ---"<CR>


" -----------------------------------------------------------------------------
"     - IDE stuff -
" -----------------------------------------------------------------------------
syntax on
" Show the (partial) command as it’s being typed
set showcmd
set cmdheight=2
" Command completion
set wildmenu
set wildmode=full
" Folding of indentation
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10
" Make tabs as wide as two spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab


" -----------------------------------------------------------------------------
"     - Debugging -
" -----------------------------------------------------------------------------
nmap <F8> :VBGcontinue<CR>
nmap <F9> :VBGstepOver<CR>
nmap <F10> :VBGstepIn<CR>
nmap <F6> :VBGevalWordUnderCursor<CR>


" -----------------------------------------------------------------------------
"     - Resizing panes -
" -----------------------------------------------------------------------------
nmap <C-h> :vertical resize -4<CR>
nmap <C-l> :vertical resize +4<CR>
nmap <C-k> :resize +4<CR>
nmap <C-j> :resize -4<CR>






