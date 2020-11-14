set smarttab
set shiftwidth=4
set tabstop=4
syntax on
set hlsearch "highlighting search
set ignorecase "ignore case search
set incsearch "partial matches search
set smartcase
set ruler
set number
set showmatch
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
if has('mouse')
	set mouse=a
endif
filetype plugin on
filetype indent on
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set showcmd
set encoding=utf-8
set numberwidth=1
set cursorline
set clipboard=unnamed
set sw=4
set laststatus=2 "show bottom bar
set noshowmode "no show status mod
set relativenumber
color gruvbox "molokai
set bg=dark "set dark theme
set title
"NerdTree
let NerdTreeQuitOnOpen=1 
nmap <SPACE>nt :NERDTreeToggle<CR>
nmap <SPACE>es <Plug>(easymotion-s2)
