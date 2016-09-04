version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <D-BS> 
imap <M-BS> 
imap <M-Down> }
inoremap <D-Down> <C-End>
imap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
nnoremap \m :silent !open -a Marked.app '%:p'
nmap gx <Plug>NetrwBrowseX
map <M-Down> }
noremap <D-Down> <C-End>
map <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vmap <BS> "-d
let &cpo=s:cpo_save
unlet s:cpo_save
filetype plugin indent on

" Set tab to four spaces
set softtabstop=4 shiftwidth=4 expandtab 
set autoindent

" Relative line numbers displayed
set relativenumber
set number

set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Source\ Code\ Pro:h13
set guitablabel=%M%t
set helplang=en
set langmenu=none
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set termencoding=utf-8
set window=52
set backup
set backupdir=/private/tmp/
set dir=/private/tmp/
" vim: set ft=vim :
execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*






set t_Co=256

syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized
