set nocompatible " be iMproved
filetype off " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
set nocompatible " Disable vi-compatibility
set laststatus=2 " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup'
Plugin 'tpope/vim-rails.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'xsbeats/vim-blade'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "Lokaltog/vim-powerline"
Bundle "kien/ctrlp.vim"
Bundle "tpope/vim-surround"
Bundle "honza/vim-snippets"
Bundle "markwu/vim-laravel4-snippets"
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'mihaifm/vimpanel'
Plugin 'Raimondi/delimitMate'

" non-GitHub repos
" Git repos on your local machine (i.e. when working on your own plugin)
" ...
call vundle#end()
filetype plugin indent on " required!
"
" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!) - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
nmap <C-v> "*gp
:map<C-c> "+y
autocmd FileType *.php set ft=php.laravel
autocmd Filetype *.blade.php set ft=php.laravel.blade
set et
au FileType html setl sw=2 sts=2 et
au FileType php setl sw=4 sts=4 et
au FileType python setl sw=4 sts=4 et
au FileType ruby setl sw=2 sts=2 et
color chance-of-storm
set nu
syntax on
set cursorline
set backspace=2
set backspace=indent,eol,start
:imap <C-J> <Plug>snipMateNextOrTrigger
:smap <C-J> <Plug>snipMateNextOrTrigger
let g:ycm_auto_trigger = 0
" disable extra information in preview window
set completeopt=menu,menuone

"map command
:ca Vp VimpanelToggleLeft

"auto change dir
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif

"auto save when lost focus
:au FocusLost * silent! wa
