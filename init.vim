call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-treesitter/playground'
"Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'overcache/NeoSolarized'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'neoclide/coc.nvim'
Plug 'junegunn/vim-easy-align'
Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'voldikss/vim-floaterm'
Plug 'github/copilot.vim'
Plug 'tribela/vim-transparent'
call plug#end()

" colorscheme everforest 
colorscheme NeoSolarized
" colorscheme deus

let g:bargreybars_auto=0
let g:NERDTreeWinPos = "right"
let g:NERDTreeMinimalMenu=1
let g:js_file_import_no_mappings = 1
let g:neoformat_try_node_exe = 1


set background=dark
set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set cursorline " Highlights the current line in the editor
set hidden " Hide unused buffers
set autoindent " Indent a new line
set inccommand=split " Show replacements in a split screen
set mouse=a " Allow to use the mouse in the editor
set number " Shows the line numbers
set title " Show file title
set wildmenu " Show a more advance menu
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax on
set nospell " enable spell check (may need to download language package)
set ttyfast " Speed up scrolling in Vim
set encoding=utf8
set tabstop=4
set shiftwidth=4
set smarttab
set ignorecase
set nowrap
set si
set ai
set backspace=start,eol,indent
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
tnoremap <Esc> <C-\><C-n>
set formatoptions+=r
noremap <C-J> <C-W>j
noremap <C-L> <C-W>l
noremap <C-H> <C-W>h
nmap <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:transparent_groups = ['Normal', 'Comment', 'Constant', 'Special', 'Identifier',
                            \ 'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String',
                            \ 'Function', 'Conditional', 'Repeat', 'Operator', 'Structure',
                            \ 'LineNr', 'NonText', 'SignColumn', 'CursorLineNr', 'EndOfBuffer']

" Pmenu
let g:transparent_groups += ['Pmenu']

" coc.nvim
let g:transparent_groups += ['NormalFloat', 'CocFloating']

" command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
" autocmd *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
