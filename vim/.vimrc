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
 NeoBundle 'altercation/vim-colors-solarized'
 NeoBundle 'vimwiki/vimwiki'
 NeoBundle 'reedes/vim-wordy'
 NeoBundle 'freitass/todo.txt-vim'
 NeoBundle 'MarcWeber/vim-addon-mw-utils'
 NeoBundle 'tomtom/tlib_vim'
 NeoBundle 'garbas/vim-snipmate'
 NeoBundle 'honza/vim-snippets'
 NeoBundle 'ervandew/supertab'
 NeoBundle 'chriskempson/base16-vim'
 NeoBundle 'vim-airline/vim-airline'
 NeoBundle 'vim-airline/vim-airline-themes'
 NeoBundle 'jamessan/vim-gnupg'
 call neobundle#end()
 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
 "end NeoBundle Magick

"My config
syntax enable           " enable syntax processing
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set relativenumber              " show line numbers
set nu
set wildmenu            " visual autocomplete for command menu
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set guifont=Terminus\ (TTF):h18
"Bindin
let mapleader="\<Space>"       " leader is space}
let maplocalleader="\<Space>"       " leader is space}
inoremap jk <esc>
"Clean all the bad lines etc
set tw=72

"F key mappings"
set pastetoggle=<F2>
inoremap <F3>  <ESC>zg
nnoremap <F3>  <ESC>zg
inoremap <F4>  <ESC> :call Spelling() <CR>
nnoremap <F4>  <ESC> :call Spelling() <CR>
inoremap <F5> <ESC>:setlocal spell! spelllang=en_us<CR>
nnoremap <F5> <ESC>:setlocal spell! spelllang=en_us<CR>
noremap <F6> <ESC>:w<CR>

function! Spelling()
        :normal ms
        :normal [s
        :normal 1z=
        :normal `s
endfunction 

nnoremap <leader>m :!latexmk -pdf -pv -gg -silent %<CR> :!latexmk -c <CR> 
nnoremap <leader>d :!pandoc -S -s -f latex -t docx --data-dir=~/.pandoc --reference-docx ~/.pandoc/apa.docx --csl ~/.pandoc/apa.csl --bibliography ~/schoolwork/bibliography.bib -i % -o %:r.docx && open %:r.docx <CR> 
nnoremap <leader>o :browse confirm e <CR>
nnoremap <leader>b :buffers<CR>:buffer<Space>
nnoremap <leader>cu :w !detex \|wc -w<CR>
nnoremap <leader>z :let &scrolloff=999-&scrolloff<CR>

"Vim Shortcuts
set nocompatible
filetype plugin on
syntax on
filetype indent on              "loading of indent files for all formats

"Colorscheme
"colorscheme base16-green-screen
"set bg=dark

"Vim Airline
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme = 'base16'
set laststatus=2

"Wiki Settings
let g:vimwiki_list = [{'path': '$HOME/Dropbox/wiki'}]

au BufRead /tmp/mutt-* set tw=72

set iskeyword+=_
