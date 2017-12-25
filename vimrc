execute pathogen#infect()
execute pathogen#helptags()


syntax on
filetype plugin on 
filetype indent on 

" Load custom settings from source

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
source $HOME/vimfiles/startup/mappings.vim
source $HOME/vimfiles/startup/settings.vim

set nopaste

behave mswin " Tells vim to treat the mouse like a Windows mouse


" Color Scheme
colorscheme Base2Tone_SpaceDark

" PowerShell file AutoCommands
au BufNewFile,BufRead   *.ps1   set foldmethod=syntax


" GUI Auto Commands
autocmd GUIEnter * NERDTree " Open NERDTree upon open

autocmd GUIEnter * simalt ~xl " maximize the window upon open

autocmd GUIEnter * so $MYVIMRC
