
" key Mappings
" The <CR> means Carriage Return

" Enable Elite Mode by disabling the arrow keys in NORMAL and INSERT modes.
no <down> ddp
no <up> ddkP
no <left> <Nop>
no <right> <Nop>

ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>


let mapleader = "," " Maps the <leader> to ,


" Setting up auto center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Custom tab commands
nnoremap <C-Tab> :tabnext<CR>
nnoremap <C-S-Tab> :tabprevious<CR>
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprevious<CR>
inoremap <C-Tab> <Esc>:tabnext<CR>
inoremap <C-S-Tab> <Esc>:tabprevious<CR>


" ALT+1 toggles NerdTree on and off
noremap <leader>1 :NERDTreeToggle<CR>

" UltiSnips mappings


" Custom snippet commands (run from NORMAL mode)

" Writes a markdown tag to the cursors position
nnoremap <leader>mdt :-1read $HOME\vimfiles\Snips\Html\MarkdownTag.html<CR>1f<

" Writes a header1 tag to the cursors position
nnoremap <leader>ht1 :-1read $HOME\vimfiles\Snips\Html\CenterHeader1.html<CR>2f<

" Writes a header2 tag to the cursors position
nnoremap <leader>ht2 :-1read $HOME\vimfiles\Snips\Html\CenterHeader2.html<CR>2f<

" Source current file, great for testing commands you just wrote
nnoremap <leader>sop :source %<CR>

" Fix spelling mistake plus my first vim function evar!
function! FixLastSpellingError()
	:normal! mm[s1z=`m
endfunction

nnoremap <leader>sp :call FixLastSpellingError()<CR>

" Comment the next n lines down
function! CommentNLinesDown()
	let c = v:count
	:normal! I" jc.
endfunction

nnoremap <leader>cd :call CommentNLinesDown()<CR>

" Comment the next n lines up
function! CommentNLinesUp()
	let c = v:count
	:normal! I" kc.
endfunction

nnoremap <leader>cu :call CommentNLinesUp()<CR>
 

