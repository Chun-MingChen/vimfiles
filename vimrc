set autoindent " auto-indent

" Set tab indent to be 4 spaces
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Fix backspace not working
set backspace=indent,eol,start

" Line number
set number

" skip color theme for unknown issue
" Use Solarized Dark
" set background=dark
" colorscheme solarized

set nocompatible " get rid of Vi compatibility mode. SET FIRST.
filetype off

" Open NERDTree automatically
" autocmd vimenter * NERDTree

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Plugins
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'

" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install JavaScript Syntax
Plugin 'jelera/vim-javascript-syntax'

" Nerd tree
Plugin 'scrooloose/nerdtree'

" Ruby Syntax Highlight
Plugin 'vim-ruby/vim-ruby'

" Rails plugin
Plugin 'tpope/vim-rails'

" Endwise for Ruby
Plugin 'tpope/vim-endwise'

" Tagbar
Plugin 'majutsushi/tagbar'
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
map <F3> :Tagbar<CR>

" vim markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" TOML syntax
Plugin 'cespare/vim-toml'

" Rust syntax highlight
Plugin 'rust-lang/rust.vim'

" Vue Component syntax highlight
Plugin 'posva/vim-vue'

" Interactive command execution in Vim
Plugin 'Shougo/vimproc.vim'

" Elm plugin for Vim
Plugin 'elmcast/elm-vim'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:elm_syntastic_show_warnings = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" }}}

" Go Syntax Highlight {{{
Plugin 'fatih/vim-go'
let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
" }}}

" CoffeeScript Syntax Highlight {{{
Plugin 'kchmck/vim-coffee-script'

au BufRead,BufNewFile,BufReadPre *.coffee set filetype=coffee
autocmd FileType coffee setlocal sw=2 sts=2 ts=2 et

" }}}

Plugin 'ctrlpvim/ctrlp.vim'

" vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'

" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax enable
filetype plugin indent on    " required

" Settings of gtags
map <C-g> :Gtags
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-b> :cp<CR>
