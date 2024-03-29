" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Surround - ys,ds,cs + {motion}  
    Plug 'tpope/vim-surround'
    " Commenting - toggle with [count]<leader>c<space>
    Plug 'preservim/nerdcommenter'
    " Vim sneak - navigation with s{char}{char}
    Plug 'justinmk/vim-sneak'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'lewis6991/gitsigns.nvim'
	" Airline 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
	" Markdown preview
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
	" LSP
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/nvim-compe'
	" Telescope
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'	
	" Nvim-tree
	Plug 'kyazdani42/nvim-web-devicons' " for file icons
	Plug 'kyazdani42/nvim-tree.lua'
	" seoul256 theme
    Plug 'junegunn/seoul256.vim'
	" Embark theme
	Plug 'embark-theme/vim', { 'as': 'embark' }
call plug#end()
