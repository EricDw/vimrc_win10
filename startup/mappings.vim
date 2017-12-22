
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
nnoremap <leader>mdt :-1read $HOME\Snips\Razor\MarkdownTag.txt<CR>1j

