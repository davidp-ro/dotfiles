" :: Plugins :: "

call plug#begin(stdpath('data').'/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

call plug#end()

" :: Settings :: "
colorscheme nord
hi Normal guibg=NONE ctermbg=NONE  " Transparent background 
set tabstop=4               " --
set shiftwidth=4            " Tabs are 4 spaces
set expandtab               " --
set autoindent              " Autoindent
set number                  " Show line number
set noerrorbells            " Don't beep
set backspace=indent,eol,start  " Allow backspacing over indention, line breaks and insertion start

