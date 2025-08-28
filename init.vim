" Tori's Vimrc
" Created bc my nvim config is too bloated :D
" This config is a work-in-progress, and is designed to be as minimal as
" possible.

" Contents (Use '#' over a heading to jump to it)
" -----------------------------------------------
"  1. Style
"  2. Keybinds
"  3. Searching
"  4. Plugins


" 1. Style
	syntax on
	
	" Line numbers
	set number
	set relativenumber
	let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' " Ensure there are line numbers in NetRW
	
	" Tabs
	set smarttab
	set shiftwidth=4
	set tabstop=4
	
	" Show whitespace
	set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
	set list
	
	" Theme
	set guioptions=Ace
	set notermguicolors
	
	highlight Normal ctermbg=Black guibg=Black guifg=White
	highlight Comment ctermfg=Cyan guifg=Cyan
	highlight LineNr ctermfg=Gray guifg=Gray
	highlight Statement ctermfg=Yellow guifg=Yellow
	highlight Preproc ctermfg=LightBlue guifg=LightBlue
	
	" Enable filetype plugins
	filetype plugin on
	filetype indent on
	
	" Disable error bells
	set noerrorbells
	set belloff=all


" 2. Keybinds
	" Copy to clipboard
	set clipboard+=unnamedplus
	
	let mapleader=" "
	nmap <leader><leader> :Ex<cr>
	nmap <leader><cr> :nohlsearch<cr>
	
	" Tab management
	nmap <leader>t :tabe<cr>
	nmap <leader>l :tabnext<cr>
	nmap <leader>h :tabprevious<cr>
	
	" Move throughout windows
	map <C-h> <C-W>h
	map <C-j> <C-W>j
	map <C-k> <C-W>k
	map <C-l> <C-W>l
	
	" Don't overwrite register when pasting yanked text
	xnoremap p P


" 3. Searching
	set ignorecase
	set smartcase
	set hlsearch
	set incsearch
	command! MakeTags !ctags -R .
	set path+=**


" 4. Plugins
" NB: This depends on vim-plug (https://github.com/junegunn/vim-plug.git)
	call plug#begin()
	
	Plug 'prabirshrestha/vim-lsp'			" LSP Support
	Plug 'mattn/vim-lsp-settings'			" Autodetect languages and manage server installations
	Plug 'christoomey/vim-tmux-navigator'	" Easily navigate between vim windows & tmux panes
	Plug 'tpope/vim-fugitive'				" Git integration
	Plug 'fcpg/vim-altscreen'				" Stops commands outputting to stdout
	Plug 'Toriiiiiiiiii/vim-com'			" Emacs-Style compile command for vim -- Custom plugin made by me :D
	
	call plug#end()
