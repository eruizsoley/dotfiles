"   ____      _ __         _
"  /_ _/___  (_) /__    __(_)___ ___
"   // / __ \/ / __/ \  / / / __` __ \
" _//_/ / / / / /__\  \/ / / / / / / /
"/___/_/ /_/_/\__(_)\___/_/_/ /_/ /_/

" vim-plug auto setup

let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

so ~/.config/nvim/vim/plugins.vim
so ~/.config/nvim/vim/map.vim
so ~/.config/nvim/vim/plugins-config.vim

" Use Vim settings, rather than Vi settings
set nocompatible

" Read file when modified outside Vim
set autoread

" Do not keep any history
set viminfo='0,:0,<0,@0,f0
set nobackup
set nowb
set noswapfile

" Allow backspacing over everything in INSERT mode
set backspace=indent,eol,start

" Show ruler and command visual aid
set ruler
set showcmd

" Disable bells
set noerrorbells
set novisualbell
set t_vb=

" Set partial search and result highlighting
set incsearch
set hlsearch

" Ignore case when searching
set ignorecase
set smartcase

" Show matching bracets
set showmatch

" Highlight the cursor line
set cursorline

" Set the colorscheme and window tansparency
set background=dark
set t_Co=256
set termguicolors
colorscheme gruvbox

" Set default vertical split to right
set splitright

" Set soft tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Indent
set autoindent
set si

" Show invisibles
set hidden
set listchars=tab:▸\ ,trail:·
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Undo
set undofile
set undodir=~/.vim/undodir

" Show line number and listchars
set list
set nu
set number
set numberwidth=1
set relativenumber

set wildmenu
syntax on
set encoding=utf-8
set wrap
set textwidth=79
set scrolloff=3
set laststatus=2
