set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" Autocomplete engine
Plugin 'ycm-core/YouCompleteMe'

" Syntax corrector
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"-------------------------------------------------------
"MY CONFIG
"-------------------------------------------------------
"
" Numbers at the left side
set number

" build in file type detection -----off cause vundle need it like that
"filetype on

" Plugin pacage manager
call plug#begin('~/.config/nvim/plugged')

" Typing
Plug 'chun-yang/auto-pairs',
Plug 'alvan/vim-closetag',
"Plug 'tpope/vim-surround',

" Completion engine for Python-django

"Plug 'sukima/xmledit',

" Syntax highlighter
Plug 'sheerun/vim-polyglot',

" Status bar
Plug 'maximbaz/lightline-ale',
Plug 'itchyny/lightline.vim',

" Tree
Plug 'scrooloose/nerdtree',

" Tmux
"Plug 'benmills/vimux'
"Plug 'christoomey/vim-tmux-navigator'

" Autocomplete
"Plug 'sirver/ultisnips',
"Plug 'neoclide/coc.nvim', {'branch':'release'},

" Themes
Plug 'dracula/vim', {'as':'dracula'},
Plug 'ciaranm/inkpot',

" Editorconfig 
Plug 'editorconfig/editorconfig-vim',
Plug 'easymotion/vim-easymotion',
Plug 'yggdroot/indentline',

call plug#end()

" nerdtree keybinding
nmap <C-f> :NERDTreeToggle<CR>

" nerdtree split navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" shift+arrowkeys selection (replace visual mode from v+ arrowkeys)
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

" remap delete <d> to backspace
nmap <BS> d 
vmap <BS> di

" ctrl+c , ctrl+v , ctrl+z behaviour like other text editors remap
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
vnoremap <C-c> "+y
map <C-v> "+p
imap <C-v> <Esc>pi
imap <C-z> <Esc>ui
nmap <C-z> u
