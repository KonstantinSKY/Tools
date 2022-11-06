"NEOVIM config

"PLUGINS  !Install vim-plug first.
call plug#begin('~/.config/nvim/plugged')
"Plug 'neovim/nvim-lspconfig'  			"For lsp servers
"Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'saadparwaiz1/cmp_luasnip'
"Plug 'L3MON4D3/LuaSnip'
Plug 'ntpeters/vim-better-whitespace'   "Work with trail whitespase
"Plug 'tmhedberg/SimpylFold'  			"Foldind blocks of code
"Plug 'morhetz/gruvbox' 				    "Color scheme gruvbox
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'			    "Insert, delete and pairs brackets
Plug 'tpope/vim-fugitive'			    "Wrapper for git
"Plug 'airblade/vim-gitgutter'			"For git diff
Plug 'vim-airline/vim-airline'			"Bottom status line
"Plug 'kien/ctrlp.vim'
"Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'			"check syntaxis
Plug 'nvie/vim-flake8'			    	"check syntaxis for python
Plug 'vim-scripts/vim-auto-save'		"File autosave
"Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'			"for comments
call plug#end()

"SETS
set nu                                  "line numbers
set encoding=UTF-8              		"text coding
"set mouse=a								"mouse support
set noswapfile          				"no to create swap file in edition time
set scrolloff=7
set foldcolumn=1						"Space from left before numbers

"Cursor
set cursorline                          "Horizontal cursor line
set cursorcolumn                        "Vertical cursor line

"Folding
set foldmethod=indent                   ":help fold-command
set foldlevel=10

"Tabs
set tabstop=4 softtabstop=0 shiftwidth=4 smarttab
"set expandtab							"Space chars in tab on
"set listchars=tab:| ,trail:.
"set list
"Search
set hlsearch incsearch

" Color settings
"colorscheme gruvbox
"set background=dark
"set termguicolors             " Set tru colol for tmux"


set updatetime=100			"GitGutter Delay
set autoindent
"set list lcs=tab:\|\			"for Yggdroot/indentLine

"au BufNewFile,BufRead *.py              "Sets for Python
 "   \set tabstop=4
   "  \set softtabstop=4
   " \set shiftwidth=4
   " \set textwidth=79
   " \set expandtab
   " \set smarttab

" LETS
" For airlines
let g:airline_powerline_fonts = 1 			"Powerline fonfs ON
let g:airline#extensions#keymap#enabled = 0 		"Dont show curent mapping
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" 	"Cursor position
let g:Powerline_symbols ='unicode' 			"unicode
let g:airline#extensions#xkblayout#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"vim-scripts/vim-auto-save
let g:auto_save_in_insert_mode = 0
"for ntpeters/vim-better-whitespace
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0

"Python
let python_highlight_all = 1
syntax on

"Auto-Save
let g:auto_save = 1            		"Auto save on, 0-off
let g:auto_save_silent = 0		"1: Don't show autosave notification
let g:auto_save_events = ["InsertLeave"] "When to save event
let g:indentLine_enabled = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"MAPS
"Ctrl+x add permitions for execute
map <C-x> :!chmod +x %<CR>
map <F2> :IndentLinesToggle<CR>
"Ctrl+n Start Nerd Tree
map <C-n> :NERDTreeToggle<CR>
map <F9> :!%:p <CR>
" Add and remove empty line
noremap + maO<esc>`a
noremap - mao<esc>`a

"  Enable folding with the spacebar
" nnoremap <space> za			" Enable folding with the spacebar
"nnoremap <C-/> <Leader>c<space>

" Templates
au bufnewfile *.sh 0r ~/Tools/nvim/sh_header.templ
