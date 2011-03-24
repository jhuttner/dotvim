filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

set nocompatible
set modelines=0

augroup filetype
	au!
	au! BufRead,BufNewFile *.phtml set ft=php.html " For SnipMate
	au! BufRead,BufNewFile *.tpl set ft=html " For SnipMate
augroup END

"File type for autoclose tag to work on phtml files
au FileType xhtml,phtml,xml ru ftplugin/html/autoclosetag.vim


" from tpope
set cmdheight=2
set complete-=i     " Searching includes can be slow
set dictionary+=/usr/share/dict/words
set display=lastline

" new stuff - http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
" automatically write a file when leaving a modified buffer"
set autowrite
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set t_Co=256

" old
set shiftwidth=2
set tabstop=2
set noexpandtab
set showmatch
set ignorecase
set incsearch
set autowrite
set bs=2
set hls
set bg=dark
set nowrap
set pastetoggle=<F2>
set backupdir=$HOME/vi-backup
set wildignore=*Zend*,.git,*bundles*,*jpgraph*,*Smarty*,*smarty*,django_test*,backups/2010*,images*,graphs*,*amcharts*,.csv
set foldmethod=marker
"set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
"set statusline+=%{fugitive#statusline()}
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set statusline+=%{fugitive#statusline()}

"Save on Lose Focus
au FocusLost * :wa

let mapleader = ","

"*******************************************
"*******************************************
"****** COMMAND MODE REMAPPINGS ************
"*******************************************
"*******************************************

noremap <leader>y y :PBCopy<CR>
nnoremap <leader>s /<C-p>
nnoremap <leader>gg <C-g>
nnoremap <leader>w :w<CR>
nnoremap <leader>m <C-w>\|
"nnoremap <leader>q :q<CR>
nnoremap <leader>k :nohlsearch<CR>
nnoremap <leader>n :cn<CR>
nnoremap <leader>f :CommandTFlush<CR>
nnoremap <leader>z <C-w>=
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<CR>
nnoremap <leader>l :source ~/.vimrc<CR>

"Yank Ring Plugin
nnoremap <silent> <F4> :YRShow<CR>
let g:yankring_window_height = 20

"Gundo
"nnoremap <F5> :GundoToggle<CR>

"NERDTree
nnoremap <F6> :NERDTreeToggle<CR>

"Open a vertically-split window, and focus on it.
nnoremap <leader>v <C-w>v<C-w>l

"Carriage Return to toggle between files in window
nnoremap <CR> :wa<CR><C-^>

"Make every command easier!
nnoremap ; :

"Select text after paste
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

"sudo vim <file> if vim <file> complains about permissions
cnoremap w!! w !sudo tee % >/dev/null

"make :ww be a regular save
cnoremap ww w<CR>

"strip trailing whitespace
nnoremap <leader>c :%s/\s\+$<CR>

"support for sessions.  quick and easy.
"cnoremap sesh mksession! ~/.vim_session
"cnoremap lsesh source ~/.vim_session

"Easier splits navigation - Remapped Caps Lock to Control
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-t> <C-w>t

"searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<CR>
nnoremap <tab> %
vnoremap <tab> %

" Better scrolling
nnoremap <Space> <C-F>
nnoremap t <C-B>

" Smooth scroll up one line
nnoremap r  <C-Y>
" Smooth scroll down one line
"nnoremap f  <C-E>

"*******************************************
"*******************************************
"****** INSERT MODE REMAPPINGS *************
"*******************************************
"*******************************************
inoremap jj <ESC>
inoremap ii <Esc>

" colorscheme
syntax enable
colorscheme darkblue

autocmd FileType python set tabstop=2 shiftwidth=2 expandtab
autocmd FileType md set tabstop=2 shiftwidth=2 expandtab
autocmd FileType markdown set tabstop=2 shiftwidth=2 expandtab
