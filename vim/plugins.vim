
call plug#begin('~/.config/nvim/plugged')

" IDE
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'

" Completion & Highlightning
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() }}
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'

" Aesthetics
Plug 'morhetz/gruvbox'

call plug#end()
