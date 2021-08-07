filetype plugin indent on

"" Set default encoding
set encoding=UTF-8

set autoindent
set cursorline
set hidden
set ignorecase
set inccommand=split
set laststatus=2
set noswapfile
set nowrap
set pumblend=20
set smartindent
"set termguicolors
set ttimeout
set ttimeoutlen=10
set ttyfast
set updatetime=100
set wildoptions=pum
set wrap linebreak nolist

""" Disable using mouse
set mouse=c

""" Cancel backup
set nobackup
set nowritebackup
set noswapfile
set noundofile

""" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set softtabstop=4

""" Make it abvious where 80 character is
" set textwidth=80

""" Use one space, not two after punctation
set nojoinspaces

""" NUmbers
set number
set numberwidth=2

""" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

""" When the type of shell script is /bin/sh, assume a POSIX-compatible shell
"for synctax highlighting purposes
let g:is_posix = 1

""" Copy from neovim to clipboard
set clipboard+=unnamedplus

""" Remove unwanted trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e
