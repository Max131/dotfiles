set ai
set si
set wrap
set wildmenu
set smartcase
set smarttab
set expandtab
set expandtab
set showmatch
set number
set numberwidth=1
set cursorline
set tabstop=2
set shiftwidth=2
set sw=2
set expandtab
set hlsearch
set incsearch
set cursorline

call plug#begin('~/.config/nvim/plugs')
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'airblade/vim-gitgutter'
  Plug 'scrooloose/syntastic'
  Plug 'vim-airline/vim-airline'
  Plug 'morhetz/gruvbox'
  Plug 'elzr/vim-json'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'mattn/emmet-vim'
  Plug 'Valloric/YouCompleteMe'
  "Themes
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'joshdick/onedark.vim'
  "End Themes
call plug#end()

color onehalfdark
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
noremap <F4> <C-y>,
noremap <F3> :NERDTreeToggle<CR>

"Remember last cursor position
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 

"CSS & HTML auto complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"Airline Options
"let g:airline_left_sep=""
"let g:airline_right_sep=""
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enable=1

