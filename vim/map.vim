" GoTo code navigation.

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gs :CocSearch

" Use K to show documentation in preview window.

nnoremap <silent> K :call <SID>show_documentation()<CR>

" vim-commentary

nnoremap gc :Commentary<CR>
vnoremap gc :Commentary<CR>

nnoremap <CR> :noh<CR><CR>

let mapleader = ","
nnoremap cc ciw
map <leader>s :w<CR>
map <leader>k :q<CR>
map <leader>n :Lexplore<CR>

map <leader>v :vsplit<CR>
map <leader>h :split<CR>

nnoremap <C-o> 10<C-e>
nnoremap <C-e> 10<C-y>

nnoremap <C-h> <C-w>h
nnoremap <C-t> <C-w>j
nnoremap <C-n> <C-w>k
nnoremap <C-s> <C-w>l

" Dual simbols
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" map extras
inoremap $% =><esc>a
inoremap $^ () => {}<esc>i

" ctlrp & buffers
map <leader>dd :bdelete<CR>
map <leader><TAB> :bNext<CR>
nnoremap<space><space> :CtrlP<CR> 
