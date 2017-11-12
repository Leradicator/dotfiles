

""""" This is where old vimrc starts

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 " The following are examples of different formats supported.
 " Keep Plugin commands between vundle#begin/end.
 " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
 " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (i.e. when working on your own plugin)
 "Plugin 'file:///home/gmarik/path/to/plugin'
 " The sparkup vim script is in a subdirectory of this repo called vim.
 " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Avoid a name conflict with L9
 " Plugin 'user/L9', {'name': 'Leradicator'}

 " plugin for latex 
 Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
 " :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to
 " auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line

" Compatibility with various things
"let shellslash=0
"set shell=bash

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
  filetype plugin indent on
  set fileencodings=utf-8
  set syntax=on
  set smartindent 
  set cindent
  set autoindent
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set nowrap
set modeline
" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

" set default colorscheme
" set also 256-colors mode
set t_Co=256
:colorscheme desert
set sessionoptions=blank,options,folds,help,curdir,buffers,winsize,resize
set tpm=1000
set stal=2
"cd /home/natolumin/documents/Prog

" Source default layout (w/ last work)
"if filereadable("/home/natolumin/.vim/skeleton.vim")
"	source /home/natolumin/.vim/skeleton.vim
"endif
"if filereadable("/home/natolumin/.vim/main.vim")
"	source /home/natolumin/.vim/main.vim
"endif

function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
        \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
if has('gui_running')
	set guifont=SourceCodePro
endif
set laststatus=2


map <leader>g :GundoToggle<CR>
let g:gundo_close_on_revert=1
map <leader>d <Plug>TaskList
map <leader>c <Plug>SyntasticCheck<cr>
let g:airline_powerline_fonts=1

"Syntax (syntastic) configuration

set formatoptions+=or

" PHP-specific configuration
"
let g:php_folding=2
set foldmethod=syntax
set foldlevel=1
let g:phpqa_codesniffer_cmd='/opt/lampp/bin/phpcs'
let g:phpqa_messdetector_cmd='/opt/lampp/bin/phpmd'
let g:phpqa_codesniffer_autorun = 0
let g:phpqa_messdetector_autorun = 0
let g:PHP_removeCRwhenUnix=1
let g:PHP_default_indenting=1

" Python-specific configuration
"
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTapDefaultCompletionType = "context"
au FileType python set foldmethod=indent
au FileType python set foldlevel=2
let g:pymode_lint_write=0
set completeopt=menuone,longest,preview
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html 	" For SnipMate
let g:django_projects='~/documents/Prog/Python/'
let g:syntastic_python_checkers=['pyflakes', 'python']

" tab configuration
set softtabstop=4 shiftwidth=4 expandtab 

" CaML specific : 
let g:syntastic_ocaml_use_ocamlc=1

nnoremap <C-n> :set invnumber<cr>
set relativenumber
set number

