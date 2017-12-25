
" OmniCompletion
set omnifunc=syntaxcomplete#Complete


" Omnisharp settings

let g:OmniSharp_server_type = 'roslyn'  
let g:OmniSharp_prefer_global_sln = 1  
let g:OmniSharp_timeout = 10

" UltiSnips settings
let g:UltiSnipsEnableSnipMate=1

" Supertab settings
" let g:SuperTabDefaultCompletionType = 'context'
" let g:SuperTabContextDefaultCompletionType = <c-x><c-o>
" let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
" let g:SuperTabClosePreviewOnPopupClose = 1

" UltiSnips
 let g:UltiSnipsExpandTrigger="<tab>"
 let g:UltiSnipsJumpForwardTrigger="<tab>"
 let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" NERDTree settings
let NERDTreeMinimalUI=1 " Removes bookmark indicators from the NERDTree
let NERDTreeDirArrows=1 " NERDTree has arrows prefixed to dirs instead of + signs

"Custom settings

set shell=powershell
set shellcmdflag=-command
set diffexpr=MyDiff()
set renderoptions=type:directx
set encoding=utf-8
set number " turns on line numbers
set relativenumber " Line numbers are relative to the current line
set guioptions-=m  "remove menu bar from gvim
set guioptions-=T  "remove toolbar from gvim
set guioptions-=r  "remove right-hand scroll bar from gvim
set guioptions-=L  "remove left-hand scroll bars from gvim
set guioptions-=e  "remove graphical tabs from gvim
set guifont=Fira_Code_Retina:h12:cANSI:qDRAFT " Sets the font/fontsize/?/?

" FOLDS
" Save folds when exiting a file
au BufWinLeave * mkview

" Load folds when entering a file
au BufWinEnter * silent loadview
