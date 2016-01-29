set clipboard=unnamed           "paste the clipboard to unnamed register
set shortmess=atI               "remove message at vim start 
set cmdheight=1                 "command line length
set noswapfile
set fileencoding=utf-8
set ff=unix
filetype plugin on              "loading of plugin files for all formats 
filetype indent on              "loading of indent files for all formats
autocmd BufEnter * silent! lcd %:p:h "Sets working deirectory to current file
autocmd! bufwritepost ~/OneDrive/dotfiles/_vimrc source %  "resource the .vimrc when saved
set t_Co=256
set splitbelow                  "Sane split defaults
set splitright
set bs=indent,eol,start " Allow backspacing over everything in insert mode
"Begin Neo Bundle Magic
" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif
 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif
   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif
 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))
 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
 NeoBundle 'reedes/vim-colors-pencil'
 NeoBundle 'bling/vim-airline'
 NeoBundle 'NLKNguyen/papercolor-theme'
 NeoBundle 'reedes/vim-pencil'
 NeoBundle 'vimwiki/vimwiki'
 NeoBundle 'reedes/vim-wordy'

 call neobundle#end()
 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
 "end NeoBundle Magick

"My config
syntax enable           " enable syntax processing
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
"set relativenumber              " show line numbers
set nu
set wildmenu            " visual autocomplete for command menu
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set guifont=Consolas:h12:cANSI
"Bindings
let mapleader="\<Space>"       " leader is space
inoremap jk <esc>
"Clean all the bad lines etc
map <F5> :setlocal spell! spelllang=en_us<CR>
map <F7> :let &scrolloff=999-&scrolloff<CR>
nnoremap <leader>m :!latexmk -pdf -pv -gg -silent %<CR> :!latexmk -c <CR> 
nnoremap <leader>d :!pandoc -sS % -o %:r.rtf --bibliography C:\Users\Daniel\Dropbox\schoolwork\postbib.bib
nnoremap <leader>o :browse confirm e <CR>
nnoremap <leader>b :buffers<CR>:buffer<Space>
nnoremap <leader>l ]sz=
nnoremap <leader>p :TogglePencil <CR>
vnoremap <leader>g g<C-g> 
nnoremap <leader>w :w <CR>
"Vim Shortcuts
nnoremap <leader>c  i\parencite{}.<ESC>hi<ESC>:w<CR>a
nnoremap <leader>cp <ESC>bi\parencite[p. <ESC>ea]{Comer}. <ESC>:w<CR>a
nnoremap <leader>ce <ESC>bi\parencite[p. <ESC>ea]{Corey}. <ESC>:w<CR>a
nnoremap <leader>cd <ESC>bi\parencite[p. <ESC>ea]{DSM}. <ESC>:w<CR>a
nnoremap <leader>ca a\citeauthor{}<ESC>i<ESC>:w<CR>a
nnoremap <leader>cy a(\citeyear{}).<ESC>2hi<ESC>:w<CR>a
nnoremap <leader>s <ESC>^i\section{<ESC>A}<ESC>:w<CR>
nnoremap <leader>su <ESC>^i\subsection{<ESC>A}<ESC>:w<CR>
"Colorscheme
colorscheme pencil
set bg=light

"Airline Config
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'pencil'
set laststatus=2 "Fixes bottom bar
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:airline_detect_whitespace=0
"Pencil

let g:pencil#autoformat = 1      " 0=manual, 1=auto (def)
let g:airline_section_x = '%{PencilMode()}'
let g:pencil#mode_indicators = {'hard': 'H', 'auto': 'A', 'soft': 'S', 'off': '',}
let g:pencil#wrapModeDefault = 'hard'

"Wiki Settings
let g:vimwiki_list = [{'path': '$HOME/Dropbox/wiki'}]
set nocompatible
filetype plugin on
syntax on
filetype indent on              "loading of indent files for all formats