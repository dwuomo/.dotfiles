set mouse=a

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nmap <F8> :TagbarToggle<CR>

nnoremap <up> :wincmd k<cr>
nnoremap <left> :wincmd h<cr>
nnoremap <right> :wincmd l<cr>
nnoremap <down> :wincmd j<cr>

let mapleader = ","
let g:neocomplcache_enable_at_startup = 1

execute pathogen#infect()
filetype plugin indent on
filetype plugin on

colorscheme morning 


set number
" Nerdtree -----------------------------------------------------------------
"{{{
map <tab> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.pyc$']
let NERDTreeMapActivateNode='<space>'
"}}}
"
" BASICS ------------------------------------------------------------------
nnoremap H 0
nnoremap L $
nnoremap <C-V> :YRShow<cr>
nnoremap <C-C> :TComment<cr>
nnoremap <C-X> :TCommentBlock<cr>
nnoremap e :Errors<cr>
nnoremap <C-W> :q<CR>
nnoremap <C-S> :w<CR>
inoremap <C-S> <Esc>:w<CR>
inoremap <C-S> <Esc><C-S>

" BUFFERGATOR -------------------------------------------------------------

" backup to ~/.tmp
 set backup
 set backupdir=~/.vim/backup,~/.backup,~/backup,/var/tmp,/tmp
 set backupskip=/tmp/*,/private/tmp/*
 set directory=~/.vim/backup,~/.backup,~/backup,/var/tmp,/tmp
 set writebackup

 if exists("+undofile")
" undofile - This allows you to use undos after exiting and restarting
"" This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
"" :help undo-persistence
"" This is only present in 7.3+
      if isdirectory($HOME . '/.vim/undo') == 0
         :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
       endif
       set undodir=./.vim-undo//
       set undodir+=~/.vim/undo//
       set undofile
 endif

 nnoremap <F5> :GundoToggle<CR>
vnoremap <c-c> "+y