
call plug#begin('~/.config/nvim/plugged')

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'alvan/vim-closetag'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rizzatti/dash.vim' 
Plug 'tpope/vim-commentary'

" Completion & Highlightning
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() }}
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" Explorer & Icons
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Startup & StatusBar
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'

" Searching
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'

" Aesthetics
Plug 'tomasiser/vim-code-dark'
Plug 'jacoborus/tender.vim'

call plug#end()
