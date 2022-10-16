# nvim-config

My nvim config for future reference.

call plug#begin('C:/Users/Alden/AppData/Local/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-treesitter/playground'
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'neoclide/coc.nvim'
Plug 'junegunn/vim-easy-align'
Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'
call plug#end()

color onedark
set termguicolors
set tabstop=2
set shiftwidth=2
set smarttab
set ignorecase
set nowrap
set si
set ai
set backspace=start,eol,indent
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
set formatoptions+=r
