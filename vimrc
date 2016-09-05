"" Robert Chambers .vimrc
"" Inspired by https://gist.github.com/millermedeiros/1262085
" ----------------------------------------------------------------------

if &cp | set nocp | endif                       " Disable Vi compatibility

filetype plugin indent on
execute pathogen#infect()

" ## Behaviour
" ----------------------------------------------------------------------

syntax enable                               " Enable syntax highlighting

set spell spelllang=en_gb                   " Use British English for spellchecking

set backup                                  " Enabling backups
set backupdir=~/.vim/backups                " Centralize backups to ~/.vim
set directory=~/.vim/swaps                  " Centralize swaps to ~/.vim

set mouse=a                                 " Enable mouse support
set history=999                             " Increase history (default = 20)
set undolevels=999                          " Increase undo buffer (default=100)
set autoread                                " Reload files if changed externally

set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1

set langmenu=none
set helplang=en
set encoding=utf8                           " Set utf8 as standard encoding

" ## UI
" ----------------------------------------------------------------------

set t_Co=256                                " Enable 256 colours
colorscheme solarized                       " Set colour scheme. Requires solarized (https://github.com/altercation/vim-colors-solarized)

" Use light background for MacVIM/gVIM, and the solarized colour scheme
if has('gui_running')
    set background=light
else
    set background=dark
endif

set guifont=Source\ Code\ Pro:h13           " Use Source Code Pro, size 13 font in the GUI
set cursorline                              " Highlight current line
set relativenumber                          " Relative line numbers displayed
set number                                  " Enable line numbers
set showmatch                               " Show matching brackets
set incsearch                               " Find as you type search
set hlsearch                                " Highlight search terms
set laststatus=2                            " Show status bar
" Format status line <Filename> <Format> <Filetype> <ASCII Char> <Hex Char>
" <Cursor position> <Document length>
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" ## Tabs and Spacing
" ----------------------------------------------------------------------

set softtabstop=4 shiftwidth=4 expandtab    " Set tab to four spaces
set autoindent smartindent                  " Enable smart indent

" ## Key Bindings
" ----------------------------------------------------------------------

let s:cpo_save=&cpo
set cpo&vim

" Insert mode remaps
" imap <D-BS> 
" imap <M-BS> 
" imap <M-Down> }
" inoremap <D-Down> <C-End>
" imap <M-Up> {
" inoremap <D-Up> <C-Home>
" noremap! <M-Right> <C-Right>
" noremap! <D-Right> <End>
" noremap! <M-Left> <C-Left>
" noremap! <D-Left> <Home>
nnoremap \m :silent !open -a Marked.app '%:p'
" nmap gx <Plug>NetrwBrowseX
" map <M-Down> }
" noremap <D-Down> <C-End>
" map <M-Up> {
" noremap <D-Up> <C-Home>
" noremap <M-Right> <C-Right>
" noremap <D-Right> <End>
" noremap <M-Left> <C-Left>
" noremap <D-Left> <Home>

" Disable the use of arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vmap <BS> "-d
let &cpo=s:cpo_save
unlet s:cpo_save
