let mapleader = " "
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
inoremap clg console.log();<left><left>
inoremap <F2> <ESC>:w<CR>
inoremap <F3> <ESC>:Telescope find_files<CR>
inoremap <S-Up> <ESC>:m.-2<CR>
inoremap <S-Down> <ESC>:m.+1<CR>
noremap <F2> :w<CR>
noremap <F3> :Telescope find_files<CR>
noremap <F4> :nohls<CR>
noremap <F9> :CocCommand prettier.formatFile <CR>
noremap <F10> :SidebarNvimToggle <CR>
noremap <F11> :Lexplore<CR>
noremap <S-Up> :m.-2<CR>
noremap <S-Down> :m.+1<CR>
map <S-Insert> <MiddleMouse>

"Plugins
call plug#begin('~/.config/nvim/plugs')
  Plug 'neoclide/coc.nvim'
  Plug 'ap/vim-css-color'
  Plug 'alvan/vim-closetag'
  Plug 'airblade/vim-gitgutter'
  Plug 'easymotion/vim-easymotion'
  Plug 'sheerun/vim-polyglot'
  Plug 'mattn/emmet-vim'
  Plug 'yggdroot/indentline' "Lineas de indent
  Plug 'scrooloose/nerdcommenter' "Commentarios
  Plug 'itchyny/vim-gitbranch'
  Plug 'tpope/vim-surround' "( [ {
  Plug 'leafOfTree/vim-svelte-plugin'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'voldikss/vim-floaterm'
  Plug 'airblade/vim-rooter'
  Plug 'mhinz/vim-startify' "Dashboard
  "Plug 'itchyny/lightline.vim'

  "Themes
  Plug 'sainnhe/gruvbox-material'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'navarasu/onedark.nvim'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'sthendev/mariana.vim'

  "Telescope 
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
  Plug 'nvim-treesitter/nvim-treesitter'

  Plug 'sidebar-nvim/sidebar.nvim'
call plug#end()

"Set theme
color onedark

"lightline theme
"let g:lightline = {
      "\ 'colorscheme': 'wombat',
      "\ 'active': {
      "\   'left': [ [ 'mode', 'paste' ],
      "\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      "\ },
      "\ 'component_function': {
      "\   'gitbranch': 'gitbranch#name'
      "\ },
      "\ }

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
    theme = 'auto',
    component_separators = {},
    --section_separators = {},
    --component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
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
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}, 
}

require("sidebar-nvim").setup(
    {
      side = 'right', 
      section = {"datetime", "git", "buffers", "diagnostics"},
      buffers = {
        sorting = "name",
        show_numbers = true
      }
    } 
   )
END

"For coc-css scss
autocmd FileType css setl iskeyword+=-
let g:LanguageClient_serverCommands = {
    \ 'sh': ['bash-language-server', 'start']
    \ }

"Svelte plugin
let g:vim_svelte_plugin_use_pug = 1
let g:vim_svelte_plugin_use_sass = 1 

"FloatTerm Plugin 
let g:floaterm_title = 'Terminal'
let g:floaterm_position = 'topright'
let g:floaterm_keymap_toggle = '<F5>'
let g:floaterm_keymap_prev   = '<F7>'
let g:floaterm_keymap_next   = '<F8>'
"let g:floaterm_keymap_new    = '<F6>'
"let g:floaterm_wintype = 'split'

so ~/.config/nvim/coc.vim
