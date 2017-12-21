" Pathogen installs all the plugins in the bundle folder
execute pathogen#infect()
execute pathogen#helptags()


syntax on
filetype plugin on 
filetype indent on 

" Load custom settings

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
source $HOME/vimfiles/startup/mappings.vim
source $HOME/vimfiles/startup/settings.vim


behave mswin " Tells vim to treat the mouse like a Windows mouse


" Color Scheme
colorscheme phosphor

function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

autocmd GUIEnter * NERDTree " Open NERDTree upon open

autocmd GUIEnter * simalt ~xl " maximize the window upon open
