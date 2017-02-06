" vimrc by @ivf, adapted

colorscheme desert 

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()

" enable backup file
set backup

" master option
set nocompatible

" syntax highlight
"if has("syntax")
set t_Co=256
syntax enable


set shell=bash
" call pathogen#infect()
syntax on

let g:Powerline_symbols = 'fancy'

if has("autocmd")
  filetype plugin indent on
endif

set ul=1000 " max undo levels
nohlsearch
set backspace=indent,eol,start
set expandtab " expand tabs to spaces
set hidden " allows changing buffers without saving
set autoindent
set smartindent
set shiftwidth=2
set tabstop=2 " tabstop == ts
set softtabstop=2
set incsearch " incremental search
"set clipboard=unnamed
set number
set ruler
set showcmd
set showmatch
set scrolloff=3
set list
"set cursorline

set listchars=tab:▸\ ,eol:¬,trail:⋅,nbsp:⋅
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

au BufEnter *.md set ft=markdown
au BufEnter *.mkd set ft=markdown
au BufRead,BufNewFile *.json set ft=json
au BufRead,BufNewFile .jshintrc set ft=json
au BufRead,BufNewFile manifest.webapp set ft=json
au BufRead,BufNewFile .jsbeautifyrc set ft=json
au BufRead,BufNewFile .jscsrc set ft=json
au BufEnter *.htm set ft=html
au BufEnter *.html set ft=html
autocmd FileType py setl shiftwidth=4 cindent tabstop=4 softtabstop=4
autocmd FileType c setl shiftwidth=4 cindent tabstop=4 softtabstop=4
autocmd FileType html setl shiftwidth=4 cindent tabstop=4 softtabstop=4
autocmd FileType java setl shiftwidth=2 cindent tabstop=2 softtabstop=2
autocmd FileType javascript setl shiftwidth=4 cindent tabstop=4 softtabstop=4
autocmd FileType make set noet ts=4 sw=4
autocmd FileType xml set shiftwidth=4 cindent tabstop=4 softtabstop=4

let g:syntastic_javascript_checkers = ['jshint', 'jscs']
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_check_on_open = 1

" Set hotkey for regenerating tags to Control-F5
nmap <F5> :TagbarToggle<CR>

" Custom ignores for ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|.git\|.pyc'

set laststatus=2
set statusline="%l,%v"

set wildignore+=*/tmp,*.so,*.sw?,*/build

" Fix home/end key in all modes
map <esc>OH <home>
cmap <esc>OH <home>
imap <esc>OH <home>
map <esc>OF <end>
cmap <esc>OF <end>
imap <esc>OF <end>
