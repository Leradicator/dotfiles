set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'jimenezrick/vimerl'
"Plugin 'ctrlp.vim'
"Plugin 'joonty/vim-phpqa'
"Plugin 'joonty/vim-taggatron'
Plugin 'taglist-plus'
"Plugin 'joonty/vdebug'
"Plugin 'phpcomplete.vim'
Plugin 'surround.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
"Plugin 'joonty/vim-phpunitqf'
Plugin 'php-doc'
Plugin 'StanAngeloff/php.vim'
Plugin 'octave.vim'
Plugin 'vim-perl/vim-perl'
Plugin 'python.vim'
Plugin 'klen/python-mode'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-git'
"Plugin 'msanders/snipmate.vim' Old and unmaintained
Plugin 'garbas/vim-snipmate'
" dependencies for vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
"Plugin 'tpope/vim-markdown'
Plugin 'plasticboy/vim-markdown'
Plugin 'wincent/Command-T'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'reinh/vim-makegreen'
Plugin 'TaskList.vim'
Plugin 'kongo2002/fsharp-vim'
Plugin 'fs111/pydoc.vim'
Plugin 'klen/rope-vim'
Plugin 'cwood/vim-django'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax' 
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'nblock/vim-dokuwiki'
" ...rest of bundles
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'

filetype plugin indent on     " required!
