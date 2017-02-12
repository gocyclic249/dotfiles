"Begin Neo Bundle Magic
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vimwiki/vimwiki'
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
NeoBundle 'vim-scripts/LanguageTool'
NeoBundle 'rhysd/vim-grammarous'
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'
"NeoBundle 'vim-pandoc/vim-pandoc-syntax'
"NeoBundle 'vim-pandoc/vim-pandoc'

call neobundle#end()
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"end NeoBundle Magick

"#####My config
set clipboard=unnamedplus           "paste the clipboard to unnamed register
set shortmess=atI               "remove message at vim start 
set cmdheight=1                 "command line length
set noswapfile
set fileencoding=utf-8
set ff=unix 
filetype plugin on              "loading of plugin files for all formats 
filetype indent on              "loading of indent files for all formats
set autoindent
set smartindent
syntax on 

set t_Co=256 
set splitbelow                  "Sane split defaults
set splitright
set bs=indent,eol,start " Allow backspacing over everything in insert mode
set noshowmode
syntax enable           " enable syntax processing
set tabstop=2       " number of visual spaces per TAB
set sw=2
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set relativenumber              " show line numbers
set nu
set wildmenu            " visual autocomplete for command menu
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set guifont=Terminus\ (TTF):h18
set tw=72
set nocompatible

"abbriviation
ab frontline front line
ab teh the
ab ptsd PTSD
ab weed  $\Delta^9$tetrahydrocannabinol
ab mdma $\pm$34-methylenedioxymethamphetamine

"Autocmds 
autocmd BufEnter * silent! lcd %:p:h "Sets working deirectory to current file
autocmd! bufwritepost ~/.vimrc nested :source ~/.vimrc "resource the .vimrc when saved 

"Bindin
let mapleader="\<Space>"       " leader is space}
let maplocalleader="\<Space>"       " leader is space}

"F key mappings"
set pastetoggle=<F2>
map! <F3>  <ESC>:call Addword()<CR>A
map! <F4>  <ESC>:call Spelling()<CR>A
map! <F5> <ESC>:setlocal spell! spelllang=en_us<CR>
map <F6> :call Latexindent()<CR>
map <F7> :call Secindent()<CR>
"Leader Maps
nnoremap <leader>ml :!latexmk -pdf -pv -gg -silent %<CR> :!latexmk -c <CR> 
nnoremap <leader>d :!pandoc -S -s -f latex -t docx --data-dir=~/.pandoc --reference-docx ~/.pandoc/apa.docx --csl ~/.pandoc/apa.csl --bibliography ~/Dropbox/schoolwork/Final/Thesis.bib -i % -o %:r.docx && open %:r.docx <CR> 
nnoremap <leader>md :!pandoc -S -s -V geometry:margin=1in % -o %:r.pdf && open %:r.pdf <CR> 
nnoremap <leader>o :browse confirm e <CR>
nnoremap <leader>b :buffers<CR>:buffer<Space>
nnoremap <leader>cu :w !detex \|wc -w<CR>
nnoremap <leader>z :let &scrolloff=999-&scrolloff<CR>
nnoremap <leader>v :e ~/.vimrc
nmap <leader>g :GrammarousCheck
nmap <leader>n <Plug>(grammarous-move-to-next-error)<Plug>(grammarous-move-to-info-window)

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

"Mutt integration
au BufRead /tmp/mutt-* set tw=72

"Language  Tool Settings

let g:languagetool_jar='/usr/local/Cellar/languagetool/3.5/libexec/languagetool-commandline.jar'

"Set up folding
"set foldexpr=getline(v:lnum)[0]==\"\\\s\"
set foldmethod=indent
set foldnestmax=10
set foldlevel=2
set foldignore=

" Functions
function! Spelling()
  :w 
  :normal [s
  :normal 1z=
  :normal gi
endfunction 

function! Addword()
  :normal [s
  :normal zg
  :normal gi
endfunction 

function! Secindent()
  :normal ms
  :normal /\\s
  :normal 2k 
  :normal me
  :normal V
  :normal `s
  :normal >>
  :normal V
  :normal 'e
  :normal gq
endfunction 

function! Latexindent()
  :el %
  :%s/\\subsection/\t\\subsection/g
  :%s/\\subsubsection/\t\t\\subsubsection/g
  :normal gg=G
endfunction
