" == Vim settings | @davidp-ro =="

colorscheme gruvbox         " Gruvbox theme
set background=dark         " Dark background
hi Normal guibg=NONE ctermbg=NONE  " Transparent background 
set tabstop=4               " --
set shiftwidth=4            " Tabs are 4 spaces
set expandtab               " --
set autoindent              " Autoindent
set number                  " Show line number
set noerrorbells            " Don't beep
set backspace=indent,eol,start  " Allow backspacing over indention, line breaks and insertion start

" Plugins:
let g:airline_theme='wombat'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

