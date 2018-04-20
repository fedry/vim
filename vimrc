source $VIMRUNTIME/defaults.vim

execute pathogen#infect()

syntax on
filetype plugin on

set background=dark
colorscheme solarized

augroup vimrcEx
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END

set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
autocmd FileType ruby,haml,eruby,yaml,html,sass,cucumber set ai sw=2 sts=2 et

set number relativenumber

set ignorecase smartcase
set hlsearch
nnoremap <CR> :nohlsearch<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
inoremap <expr> j pumvisible() ? '<C-n>' : 'j'
inoremap <expr> k pumvisible() ? '<C-p>' : 'k'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Training mode baby!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Left> :echo "Discipline yourself!"<CR>
map <Right> :echo "Discipline yourself!"<CR>
map <Up> :echo "Discipline yourself!"<CR>
map <Down> :echo "Discipline yourself!"<CR>

let g:vimwiki_list = [{'path': '~/.vim/vimwiki'}]
map <Leader><CR> :VimwikiVSplitLink<CR>
