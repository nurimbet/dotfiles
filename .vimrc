set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.

set incsearch       " highlight while searching
set hlsearch        " highlight all matching searches
set ruler
syntax on
set number
set numberwidth=5
imap jj <ESC>


function! NumberToggle()
  if(&relativenumber == 1)
    let &relativenumber=0
    set number
  else
    set relativenumber
    set number
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

:command WQ wq
:command Wq wq
:command Wqa wqa
:command WQa wqa
:command WQA wqa
:command W w
:command Q q
