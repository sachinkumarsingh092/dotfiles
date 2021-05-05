"Discription: Easiest way to learn vim ==> remove vim -> ln -s /usr/bin/nano /usr/bin/vim
"------------------------------------------------------------
" > Features 
" Enble syntax highlighting
syntax on

"------------------------------------------------------------
" > Must have options 
"
" These are highly recommended options.
set wildmenu

" Automatically use the system clipboard for copy and paste
set clipboard=unnamedplus

" Highlight searches
set hlsearch
highlight Search cterm=NONE ctermfg=grey ctermbg=blue

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Enable use of the mouse for all modes
set mouse=a

" Show file stats
set ruler

" Display line numbers on the left
set number

" Set tabsize or tabwidth
set shiftwidth=2
set autoindent
set smartindent

" Set a custom statusline
"set laststatus=2
"set statusline=
"set statusline+=%{fugitive#statusline()}
"set statusline+=%{FugitiveStatusline()}
"
"
"------------------------------------------------------------
" > Mappings
"
" Useful mappings
"
"
" The following mappings provide a quick way to move lines of text up or down. 
" The mappings work in normal, insert and visual modes, allowing you to move the
" current line, or a selected block of lines. 

noremap  <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Nerdtree mapping
" map ; :NERDTree<CR>

"" Clear the last search highlighting 
nnoremap <esc> :noh<return><esc>

"-------------------------------------------------------------
" > Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1


"-------------------------------------------------------------
" Uncomment below for plugins to load correctly
" filetype plugin indent on


"-------------------------------------------------------------
" > Plugins 

"" Automatically install plugins on the first rum
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC 
endif

"" The plugins to be installed via Vim-Plug
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'

"" for denite.nvim plugin
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


call plug#end()

