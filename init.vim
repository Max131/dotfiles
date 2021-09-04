set autoindent
set smartindent
set wrap
set wildmenu
set smartcase
set smarttab
set expandtab
set showmatch
set number
set numberwidth=1
set cursorline
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set incsearch
set cursorline
set termguicolors

call plug#begin('~/.config/nvim/plugs')
  "Plug 'sheerun/vim-polyglot'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'airblade/vim-gitgutter'
  "Plug 'scrooloose/syntastic'
  Plug 'vim-airline/vim-airline'
  "Plug 'elzr/vim-json'
  "Plug 'scrooloose/nerdtree'
  "Plug 'tpope/vim-fugitive'
  Plug 'mattn/emmet-vim'
  Plug 'Valloric/YouCompleteMe'
  Plug 'ryanoasis/vim-devicons'
  "Themes
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  "Plug 'drewtempelmeyer/palenight.vim'
  "Plug 'morhetz/gruvbox'
  "Plug 'joshdick/onedark.vim'
  "Plug 'pierre-ac/vim-northerner'
  "Plug 'arcticicestudio/nord-vim'
  "Plug 'sainnhe/edge'
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
inoremap <F2> :w<CR>
inoremap <F5> <ESC>:tabp<CR>
inoremap <F6> <ESC>:tabn<CR>
"noremap <F3> :NERDTreeToggle<CR>
noremap <F3> :Vexplore<CR>
noremap <F4> <C-y>
noremap <F5> :tabp<CR>
noremap <F6> :tabn<CR> 
noremap <F9> :silent %!prettier --stdin-filepath %<CR>
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
"Explorer VIM
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=3
let g:netrw_winsize=25
