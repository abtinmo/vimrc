set number 
set ls=2 
set t_Co=256 
set nowrap 
set mouse=a 
set noswapfile 
set hlsearch 
set autoindent 

"auto compele for ( , " , ' , { ,[ 
inoremap    (  ()<Left>
inoremap    "  ""<Left>
inoremap    `  ``<Left>
inoremap    '  ''<Left>
inoremap    [  []<Left>
inoremap    {  {}<Left>


autocmd FileType c,cpp,java,scala let b:comment_leader = '// ' 
autocmd FileType sh,ruby,python   let b:comment_leader = '# ' 
noremap <silent> #6 :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR> " commenting line with F6 
noremap <silent> #7 :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR> " uncommenting line with F7 

noremap <silent> #5 :!konsole --hold -e 'python ./%' <CR> <CR>" execute python script with F5 

noremap <silent> #3 :tabprevious<CR> 
noremap <silent> #4 :tabnext<CR> 
map <F8> :setlocal spell! spelllang=en_us<CR> 
set pastetoggle=<F2> 




"nerdtree settings 

map <F9> :NERDTreeToggle<CR> 
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 

let NERDTreeMapOpenInTab='<c-t>' 


call plug#begin('~/.vim/plugged') 

Plug 'https://github.com/scrooloose/nerdtree' 

call plug#end() 
