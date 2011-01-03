" Szymon's VIM configuration
" - 08/10/2010
version 7

" Force non-compatibility with vi
set nocompatible

" Set the colour scheme and syntax highlighting
if &t_Co >= 256 || has("gui_running")
   "colorscheme mustang
   colorscheme molokai
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

set comments=b:#,:%,fb:-,n:>,n:)
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
highlight StatusLine cterm=none ctermfg=white ctermbg=darkblue
highlight StatusLineNC cterm=none ctermfg=white ctermbg=darkblue
highlight LineNr term=NONE cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Set appropriate tab options
set tabstop=4
set shiftwidth=4
set shiftround
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3         "Maintains a scroll buffer of 3 lines either side of the current link you're on
set autoindent
set cindent
set copyindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set wildchar=<TAB>
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

let mapleader = ","

"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set nodigraph
set esckeys
set highlight=8r,db,es,hs,mb,Mr,nu,rs,sr,tb,vr,ws
set magic
set report=0
set shortmess=at
set nostartofline
set paste

set nonumber
set nowrap
set formatoptions=qrn1

set nolist
" set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.
set suffixes=.aux,.bak,.div,.gz,.idx,.log,.ps,.swp,.tar

" Force myself to use hjkl for navigating instead of arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap <leader>v V`]
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

au FocusLost * :wa "save on loss of terminal focus

" NERD Tree
map <F2> :NERDTreeToggle<cr>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

" Set specific options for individual file types
autocmd FileType scala source ~/.vim/scala.vim
