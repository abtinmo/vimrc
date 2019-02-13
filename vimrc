set number 
set ls=2 
set t_Co=256 
set nowrap 
set noswapfile 
set hlsearch 
set autoindent 
set mat=2
set spelllang=en

"auto complete for ( , " , ' , { ,[ 
inoremap    (  ()<Left>
inoremap    "  ""<Left>
inoremap    `  ``<Left>
inoremap    '  ''<Left>
inoremap    [  []<Left>
inoremap    {  {}<Left>

noremap <silent> #3 :tabprevious<CR> 
noremap <silent> #4 :tabnext<CR> 
map <F8> :setlocal spell! spelllang=en_us<CR> 
set pastetoggle=<F2> 


"nerdtree settings 

map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
let NERDTreeMapOpenInTab='<c-t>' 




call plug#begin('~/.vim/plugged') 

Plug 'https://github.com/nvie/vim-flake8'
Plug 'https://github.com/davidhalter/jedi-vim'
Plug 'https://github.com/Yggdroot/indentLine'
Plug 'https://github.com/scrooloose/nerdtree' 

call plug#end() 
