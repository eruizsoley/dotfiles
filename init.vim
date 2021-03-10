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

" General Settings
" Do not worry too much about what this does, I don't havea clue either :^)

filetype plugin indent on
syntax on
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set relativenumber
set cursorline
set undofile
set undodir=~/.config/nvim/undodir
set encoding=utf-8
set tabstop=2
set expandtab
set autoindent
set shiftwidth=2
set scrolloff=3
set showcmd
set hidden
set wildmenu
set visualbell
set splitbelow
set ttyfast
set ruler
set backspace=indent,eol,start
set number
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set wrap
set linebreak
set nolist
set shortmess+=c

" Theme

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif

set background=dark
set t_Co=256
colorscheme tender

let g:airline_theme = "codedark"
