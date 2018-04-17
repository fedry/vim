execute pathogen#infect()

syntax on

set background=light
colorscheme solarized

let g:vimwiki_list = [{'path': '~/.vim/vimwiki'}]

augroup vimrcEx
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END

set number relativenumber

set ignorecase smartcase
set hlsearch
nnoremap <CR> :nohlsearch<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
" Creator: Gary Bernhardt
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move up and down in autocomplete with <c-j> and <c-k>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <expr> j ("\<C-n>")
inoremap <expr> k ("\<C-p>")
