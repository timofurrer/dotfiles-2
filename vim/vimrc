"
" Opinionated vim configuration
"     from and for Timo Furrer <tuxtimo@gmail.com>
" don't @ me.
"

" set leader key
let mapleader=","

" disable compatiblity mode, cause ain't got time for that shit.
set nocompatible

" general necessacities
set modeline
set t_Co=256

" status and tab line configurations
set laststatus=2
set showtabline=2
set noshowmode

" who doesn't want syntax highlighting?!
syntax on
highlight clear

" detect filetypes and stuff
filetype plugin indent on

" indentation. it's relegion.
set expandtab
set shiftwidth=4
set softtabstop=4
set cindent
set autoindent
set smartindent

" copy'n'paste, search - huge stackoverflow vibes over here
set clipboard=unnamedplus
set hlsearch    " highlight search matches
set incsearch   " incremental search
set ignorecase  " ignore case by default
set smartcase   " if upper carachters are used the search becomes case sensitive

" it's a crime to _not_ use the UNIX fileformat and anything else than UTF-8
set fileformat=unix
set encoding=utf-8

" living on the edge (no backups, aka making felix cry)
set nobackup
set undofile
set undodir=~/.vim/undodir

" menu goes wild
set wildmenu
set wildmode=longest,list
set completeopt=menuone,menu,longest,preview
set wildignore+=*.o,*.lo,*.la,*.obj,.git,*.pyc,*.so,*/.git/*,*.zip,*.tar.gz,*__pycache__/*,

" the fight against grammer
set spelllang=en_us

" set correct number formats for Ctrl+A and Ctrl+X
set nrformats=alpha,octal,hex

" relate to that god damn traceback line
set number

" yes, vim, these are pairs, too
set matchpairs+=<:>

"
" KEYBINDINGS - to be foster lazyness
"
" search'n'replace
nnoremap <leader>* :%s/<c-r><c-w>/<c-r><c-w>/gc<Left><Left><Left>
vnoremap <leader>* :s/<c-r><c-w>/<c-r><c-w>/gc<Left><Left><Left>

" jump around buffers
map  <a-left>  :bp<CR>
imap <a-left>  <ESC>:bp<CR>
map  <a-right> :bn<CR>
imap <a-right> <ESC>:bn<CR>

"
" AUTOMATIC COMMANDS - to further foster lazyness
"
" remove that trailing whitespace bullshit.
autocmd BufWritePre * :%s/\s\+$//e
" let's at least combat grammer in files where it might matter the most.
autocmd FileType markdown,rst set spell

" go uses tabs with width of 8 ...
autocmd FileType go setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab

"
" PLUGINS - you are nothing without friends
"
call plug#begin('~/.vim/plugged')
source ~/.vim/plugins.vim
call plug#end()
