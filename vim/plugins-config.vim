" COC

let g:coc_global_extensions = [
	    \ "coc-css",
      \ "coc-html",
      \ "coc-json",
      \ "coc-prettier",
      \ "coc-python",
      \ "coc-tslint",
      \ "coc-tsserver",
      \ "coc-tailwindcss",
      \ "coc-snippets",
	    \ "coc-emmet",
	    \]

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <c-space> coc#refresh()

" Navigate snippet placeholders using tab

let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" Use enter to accept snippet expansion

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

" Change Netrw tree mode
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1
augroup ProjectDrawer
autocmd!
autocmd VimEnter * :Lexplore
augroup END
autocmd FileType netrw setl bufhidden=wipe
" Freed <C-l> in Netrw
nmap <leader><leader><leader><leader><leader><leader>l <Plug>NetrwRefresh
