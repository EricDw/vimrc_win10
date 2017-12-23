
" key Mappings
" The <CR> means Carriage Return

" Enable Elite Mode by diabling the arrow keys in NORMAL and INSERT modes.
no <down> ddp
no <up> ddkP
no <left> <Nop>
no <right> <Nop>

ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" Setting up auto center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Custom tab commands
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
map <C-S-Tab> :tabprevious<CR>
imap <C-Tab> :tabnext<CR>
imap <C-S-Tab> :tabprevious<CR>


" ALT+1 toggles NerdTree on and off
nmap <A-1> :NERDTreeToggle<CR>


" Custom snippet commands (run from NORMAL mode)

" Writes a markdown tag to the cursors position
nnoremap <leader>mdt :-1read $HOME\vimfiles\Snips\Html\MarkdownTag.html<CR>1f<

" Writes a header1 tag to the cursors position
nnoremap <leader>ht1 :-1read $HOME\vimfiles\Snips\Html\CenterHeader1.html<CR>2f<

" Writes a header2 tag to the cursors position
nnoremap <leader>ht2 :-1read $HOME\vimfiles\Snips\Html\CenterHeader2.html<CR>2f<

