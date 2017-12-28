execute pathogen#infect()

syntax on
filetype plugin indent on 

" Load custom settings from source files
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
source $HOME\vimfiles\bundle\settings\plugin\settings.vim
source $HOME\vimfiles\bundle\mappings\plugin\mappings.vim

" Tells vim to treat the mouse like a Windows mouse
behave mswin 

" Color Scheme
colorscheme default

" PowerShell file AutoCommands
au BufNewFile,BufRead *.ps1? set foldmethod=syntax

" GUI Auto Commands
autocmd GUIEnter * NERDTree " Open NERDTree upon open

autocmd GUIEnter * simalt ~xl " maximize the window upon open

autocmd GUIEnter * so $MYVIMRC
