set number
syntax on
nmap Q <Nop>
set tabstop=4
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right>  <ESC>:echoe "Use l"<CR>
inoremap <Up>  <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

set mouse+=a

"" Setting plugins
call plug#begin()

Plug 'rhysd/vim-clang-format'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'

call plug#end()

"" ClangFormat
autocmd FileType c ClangFormatAutoEnable
" map to <Leader>cf in C++ code
autocmd FileType c nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c vnoremap <buffer><Leader>cf :ClangFormat<CR>
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

" LightLine
set laststatus=2
let g:lightline = {
\ 'active': {
\ 'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
\ 'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
\ }
\ }
