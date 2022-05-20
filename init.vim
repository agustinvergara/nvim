" Nvim config and plugins

" Numbers at the left side
set number 

" Plugin pacage manager
call plug#begin('~/.config/nvim/plugged')

" Typing
Plug 'chun-yang/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Syntax highlighter
Plug 'sheerun/vim-polyglot'

" Status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Tree
Plug 'scrooloose/nerdtree'

" Tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" Autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch':'release'}

" Themes
Plug 'dracula/vim', {'as':'dracula'}

" Editorconfig 
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'

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
vmap <BS> d

" ctrl+c , ctrl+v , ctrl+z behaviour like other text editors remap
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
vnoremap <C-c> "+y
map <C-v> "+p
imap <C-v> <Esc>pi
imap <C-z> <Esc>ui
