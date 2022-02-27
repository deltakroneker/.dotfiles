let mapleader = "\<Space>"

" General settings
set number
set relativenumber
syntax on
set tabstop=4
set shiftwidth=4
set clipboard+=unnamedplus

" Disabling arrow keys
no <down> <Nop>
no <up> <Nop>
no <left> <Nop>
no <right> <Nop>
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>

set termguicolors " this variable must be enabled for colors to be applied properly

" Custom mappings
nnoremap <leader>w :up<CR>
map <leader>d $
map <leader>p %
nmap <leader>q :q
nnoremap va :%y+<CR>
vnoremap < <gv
vnoremap > >gv
nmap <leader>s ysiw
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" d is delete, leader d is cut (https://github.com/pazams/d-is-for-delete)
nnoremap x "_x
nnoremap X "_X
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
  nnoremap <leader>d "+d
  nnoremap <leader>D "+D
  vnoremap <leader>d "+d
else
  set clipboard=unnamed
  nnoremap <leader>d "*d
  nnoremap <leader>D "*D
  vnoremap <leader>d "*d
endif

" Buffer mappings
" https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>t :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
" nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bq :bd<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>














