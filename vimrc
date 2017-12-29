execute pathogen#infect()

syntax on
filetype plugin indent on

" Load custom settings from source files
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim

" Tells vim to treat the mouse like a Windows mouse
behave mswin 

" Color Scheme
colorscheme peachpuff

" PowerShell file AutoCommands
au BufNewFile,BufRead *.ps1? set foldmethod=syntax

