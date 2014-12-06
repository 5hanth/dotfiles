syntax on
set scrolloff=9999
set nu
set autoindent
set smartindent
set is 
set hlsearch
set nowrap
set hidden
set wildmenu
set wildmode=longest:full,full
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
filetype indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete


let mapleader=','
nnoremap - :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprevious<CR>
nnoremap <leader>c :tabclose<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>. :tabn<CR>
nnoremap <leader>w :w<CR>
nnoremap ' :w<CR>
nnoremap <leader>- :w<CR><C-z>
nnoremap <leader>q :q!<CR>
nnoremap <leader>e :vsplit  
nnoremap <leader>h :nohl<CR>  
nnoremap <leader>s :buffers<CR>:b<Space>
nnoremap <leader>d :buffers<CR>:bw<Space>
nnoremap <leader>m :mks!<CR>:xa<CR>
nnoremap <leader>a :vertical ba<CR>
nnoremap <leader>g gg=G''<CR>
nnoremap <C-c> <Esc>
nnoremap <space> <C-w>
nnoremap <Space><Space> <c-w><c-w>
nnoremap ; :
nnoremap <Left> :vertical resize +5<CR>
nnoremap <Right> :vertical resize -5<CR>
nnoremap <Up> :resize +5<CR>
nnoremap <Down> :resize -5<CR>

inoremap hh <Esc> 
nnoremap <leader>; q:
