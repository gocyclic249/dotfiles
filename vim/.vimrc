set clipboard=unnamedplus           "paste the clipboard to unnamed register
set shortmess=atI               "remove message at vim start 
set cmdheight=1                 "command line length
set noswapfile
set fileencoding=utf-8
set ff=unix 
filetype plugin on              "loading of plugin files for all formats 
filetype indent on              "loading of indent files for all formats
autocmd BufEnter * silent! lcd %:p:h "Sets working deirectory to current file
autocmd! bufwritepost ~/.vimrc nested :source ~/.vimrc "resource the .vimrc when saved 
set t_Co=256 
set splitbelow                  "Sane split defaults
set splitright
set bs=indent,eol,start " Allow backspacing over everything in insert mode
set noshowmode
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
 NeoBundle 'junegunn/goyo.vim'
 NeoBundle 'reedes/vim-colors-pencil'
 NeoBundle 'NLKNguyen/papercolor-theme'
 NeoBundle 'altercation/vim-colors-solarized'
 NeoBundle 'reedes/vim-pencil'
 NeoBundle 'vimwiki/vimwiki'
 NeoBundle 'reedes/vim-wordy'
 NeoBundle 'vim-airline/vim-airline'
 NeoBundle 'freitass/todo.txt-vim'
 NeoBundle 'MarcWeber/vim-addon-mw-utils'
 NeoBundle 'tomtom/tlib_vim'
 NeoBundle 'garbas/vim-snipmate'
 NeoBundle 'honza/vim-snippets'
 NeoBundle 'ervandew/supertab'
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
"set guifont=Inconsolata:h12:cANSI
"Bindin
let mapleader="\<Space>"       " leader is space}
let maplocalleader="\<Space>"       " leader is space}
inoremap jk <esc>
"Clean all the bad lines etc
map <F5> :setlocal spell! spelllang=en_us<CR>
nnoremap <leader>m :!latexmk -pdf -pv -gg -silent %<CR> :!latexmk -c <CR> 
nnoremap <leader>o :browse confirm e <CR>
nnoremap <leader>b :buffers<CR>:buffer<Space>
nnoremap <leader>; [sz=
nnoremap <leader>p :TogglePencil <CR>
nnoremap <leader>cu :w !detex \|wc -w<CR>
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>z :let &scrolloff=999-&scrolloff<CR>

"Vim Shortcuts
nnoremap <leader>c  a\parencite{}.<ESC>hi<ESC>:w<CR>a
nnoremap <leader>cp <ESC>bi\parencite[p. <ESC>ea]{Comer}. <ESC>:w<CR>a
nnoremap <leader>ce <ESC>bi\parencite[p. <ESC>ea]{Corey}. <ESC>:w<CR>a
nnoremap <leader>cd <ESC>bi\parencite[p. <ESC>ea]{DSM}. <ESC>:w<CR>a
nnoremap <leader>ca a\citeauthor{}<ESC>i<ESC>:w<CR>a
nnoremap <leader>cy a(\citeyear{}).<ESC>2hi<ESC>:w<CR>a
nnoremap <leader>s <ESC>^i\section{<ESC>A}<ESC>:w<CR>
nnoremap <leader>su <ESC>^i\subsection{<ESC>A}<ESC>:w<CR>

set nocompatible
filetype plugin on
syntax on
filetype indent on              "loading of indent files for all formats

"Colorscheme
colorscheme default
set bg=dark

"Pencil

let g:pencil#autoformat = 1      " 0=manual, 1=auto (def)
""let g:pencil#mode_indicators = {'hard': 'H', 'auto': 'A', 'soft': 'S', 'off': '',}
let g:pencil#wrapModeDefault = 'hard'
let g:pencil#textwidth = 70

augroup pencil
        autocmd!
        autocmd FileType tex,latex,wiki,md,markdown call pencil#init()
        autocmd FileType wiki call pencil#init()
        autocmd FileType md,markdown call pencil#init()
augroup END

"Wiki Settings
let g:vimwiki_list = [{'path': '$HOME/Dropbox/wiki'}]

au BufRead /tmp/mutt-* set tw=72
