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
