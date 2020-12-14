" General settings
set number
set relativenumber
syntax on
set tabstop=4
set shiftwidth=4

" NERD commenter settings
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

" Git gutter settings
set updatetime=100

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
set showtabline=2
set noshowmode

" FZF
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"
map <leader>f :GFiles<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>

" Disabling arrow keys
 no <down> <Nop>
 no <up> <Nop>
 no <left> <Nop>
 no <right> <Nop>
 ino <down> <Nop>
 ino <up> <Nop>
 ino <left> <Nop>
 ino <right> <Nop>

 " Airline settings
 nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
 nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
