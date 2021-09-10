"
" Opinionated vim configuration
"     from and for Timo Furrer <tuxtimo@gmail.com>
" don't @ me.
"
" PLUGINS EDITION.
"

""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'
map  <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdcommenter'
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](.git|tmp|node_modules)',
  \ 'file': '\v\.(blg|bbl|aux|bcf|pdf|out|toc|log|run\.xml)$',
  \ }

let g:ctrlp_open_multiple_files = 'ijr'
let g:ctrlp_open_new_file = 'ijr'
" }}}

" CtrlP Key Bindings {{{
map  <F2>      :CtrlPBuffer<CR>
map  <leader>b :CtrlPBuffer<CR>
imap <F2>      <ESC>:CtrlPBuffer<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'dense-analysis/ale'
let g:ale_disable_lsp = 1
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', {'branch': 'release'}
inoremap <silent><expr> <c-space> coc#refresh()

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead'
  \ },
  \ 'tabline': {
  \   'left': [ [ 'buffers' ] ],
  \   'right': [ [ ] ],
  \ },
  \ 'component_expand': {
  \   'buffers': 'lightline#bufferline#buffers'
  \ },
  \ 'component_type': {
  \   'buffers': 'tabsel'
  \ },
  \ 'bufferline': {
  \   'unicode_symbols': 1
  \ }
  \ }
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'hashivim/vim-terraform'
""""""""""""""""""""""""""""""""""""""""""""""""""


"
" COLORSCHEMES
"
""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'sonph/onehalf', { 'rtp': 'vim' }
""""""""""""""""""""""""""""""""""""""""""""""""""
