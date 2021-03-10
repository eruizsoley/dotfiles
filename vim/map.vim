" Keymap

let mapleader='ñ'
nmap <leader>e <Plug>(easymotion-s2)
nmap <leader>n :NERDTreeToggle <CR>
nmap <leader>s :TagbarToggle<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nnoremap cc ciw
nmap <leader>d <Plug>DashSearch
nnoremap <leader>dd :bd<CR>
nmap <leader>t :split term://zsh <CR>

" Keymap Git Fugitive

nmap <leader>G :G<CR>
nmap <leader>gp :Gpush<CR>
nnoremap <leader>gb :BlamerToggle<CR>

" Remap escape

inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>
inoremap kk <Esc>

" Resize

nnoremap <leader>z 10<C-w>>
nnoremap <leader>< 10<C-w><

" Use ctrl-[hjkl] to select the active split!

nnoremap <C-h> <C-W><C-H>
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>

" Tab navigation

nnoremap <TAB> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

" faster scrolling
nnoremap <silent> <C-f> 10<C-y>

" Fuzzy

nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>r :RG<CR>
nnoremap <leader>b :Buffers<CR>

" GoTo code navigation.

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gs :CocSearch

" Use K to show documentation in preview window.

nnoremap <silent> K :call <SID>show_documentation()<CR>

" vim-commentary

nnoremap <leader>c :Commentary<CR>
vnoremap <leader>c :Commentary<CR>

" Map extras

inoremap $3 =><esc>a
inoremap $4 () => {}<esc>i
inoremap $5 {<esc>o}<esc>O

inoremap <C-j> <Left>
inoremap <C-k> <Right>
