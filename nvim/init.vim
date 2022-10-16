let mapleader = " " " map leader to Space
set history=1000
set smartindent
set smartcase
set smarttab
set autoindent
set nowrap
set wildmenu
set expandtab
set showmatch
set number
set numberwidth=1
set cursorline
set tabstop=2
set shiftwidth=2
set hlsearch
set incsearch
set ignorecase
set cursorline
set termguicolors
set clipboard=unnamed
set nobackup
set nowritebackup
set noshowmode
set lazyredraw
set ttyfast
set background=dark
set mouse=a
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 

"Key maps
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O
inoremap clg console.log();<left><left>
inoremap <F2> <ESC>:w<CR>
inoremap <F5> <ESC>:tabp<CR>
inoremap <F6> <ESC>:tabn<CR>
inoremap <S-Up> <ESC>:m.-2<CR>
inoremap <S-Down> <ESC>:m.+1<CR>
noremap <F2> :w<CR>
noremap <F3> :Lexplore<CR>
noremap <F4> :nohls<CR>
"noremap <F5> :tabp<CR>
"noremap <F6> :tabn<CR> 
noremap <F9> :silent %!prettier --stdin-filepath %<CR>
noremap <S-Up> :m.-2<CR>
noremap <S-Down> :m.+1<CR>
map <S-Insert> <MiddleMouse>

"Plugins
call plug#begin('~/.config/nvim/plugs')
  Plug 'ap/vim-css-color'
  Plug 'alvan/vim-closetag'
  Plug 'airblade/vim-gitgutter'
  Plug 'easymotion/vim-easymotion'
  Plug 'sheerun/vim-polyglot'
  Plug 'mattn/emmet-vim'
  Plug 'yggdroot/indentline' "Lineas de indent
  Plug 'scrooloose/nerdcommenter' "Commentarios
  Plug 'neoclide/coc.nvim'
  Plug 'itchyny/vim-gitbranch'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'tpope/vim-surround' "( [ {
  "Plug 'itchyny/lightline.vim'
  "Plug 'vim-airline/vim-airline'
  "Plug 'ryanoasis/vim-devicons'
  "Plug 'scrooloose/syntastic'
  "Plug 'tpope/vim-fugitive'
  "Plug 'editorconfig/editorconfig-vim'
  "Plug 'junegunn/fzf' "Busca dentro de archivos
  "Plug 'junegunn/fzf.vim'
  "Plug 'MaxMEllon/vim-jsx-pretty'

  "Themes
  Plug 'arcticicestudio/nord-vim'
  Plug 'sainnhe/edge'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'sainnhe/gruvbox-material'
  Plug 'rebelot/kanagawa.nvim'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'joshdick/onedark.vim'
  "Plug 'morhetz/gruvbox'
  "Plug 'pierre-ac/vim-northerner'
  "End Themes
call plug#end()

"Set theme
color onehalfdark
""let g:lightline = {
""      \ 'colorscheme': '',
""      \ }
"lightline
"let g:lightline = {
      "\ 'colorscheme': 'one',
      "\ 'active': {
      "\   'left': [ [ 'mode', 'paste' ],
      "\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      "\ },
      "\ 'component_function': {
      "\   'gitbranch': 'gitbranch#name'
      "\ },
      "\ }

"Airline Options
"let g:airline_left_sep=""
"let g:airline_right_sep=""
"let g:airline_left_sep=""
"let g:airline_right_sep=""
"let g:airline_powerline_fonts=1
"let g:airline#extensions#tabline#enable=1

"YCM CSS autocomplete
"let g:ycm_semantic_triggers = {
"    \   'css': [ 're!^', 're!^\s+', ': ' ],
"    \   'scss': [ 're!^', 're!^\s+', ': ' ],
"    \ }

"CSS & HTML auto build autocomplete
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"Explorer VIM
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=3
let g:netrw_winsize=25

"Emmet options
"let g:user_emmet_leader_key='<Esc><Esc>'
let g:user_emmet_leader_key='<C-L>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nord',
    component_separators = {},
    section_separators = {},
    --component_separators = { left = '', right = ''},
    --section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
END

so ~/.config/nvim/coc.vim
"For coc-css scss
autocmd FileType css setl iskeyword+=-
let g:LanguageClient_serverCommands = {
    \ 'sh': ['bash-language-server', 'start']
    \ }
