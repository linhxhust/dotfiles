call plug#begin()

" Git
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'

" Utilities
Plug 'SirVer/ultisnips'
Plug 'preservim/nerdcommenter'

" LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-denite'
Plug 'hashivim/vim-terraform'

" Navigation
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'

" Display
Plug 'NLKNguyen/papercolor-theme'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'

" Project management
Plug 'scrooloose/nerdtree'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Source code analysis
Plug 'nvim-treesitter/nvim-treesitter'

" Themes
Plug 'KeitaNakamura/neodark.vim'

call plug#end()

""""""" plugins configurations
" exec 'source' dothome . '/plugins/clap.vim'
exec 'source' dothome . '/plugins/coc.nvim.vim'
exec 'source' dothome . '/plugins/nvim-treesitter.vim'
