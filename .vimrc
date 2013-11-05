syntax on
set scrolloff=9999
set nu
set autoindent
set smartindent
set is 

let mapleader=','
iabbr sk Shanthakumar
map t :NERDTreeToggle<CR>
map <leader>n :tabnew<CR>
map <leader>c :tabclose<CR>
map <leader>x :x<CR>
map <leader>, :tabN<CR>
map <leader>. :tabn<CR>
map <leader>w :w<CR>
map <leader>W :w 
map <leader>q :q!<CR>
map <leader>e :e 
map <M-Space> <Escape>
map <space> <C-w>
map ; :

nnoremap <Left> :vertical resize +5<CR>
nnoremap <Right> :vertical resize -5<CR>
nnoremap <Up> :resize +5<CR>
nnoremap <Down> :resize -5<CR>

