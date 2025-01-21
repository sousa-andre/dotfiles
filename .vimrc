" vim-plug
call plug#begin()
    " File explorer
    Plug 'preservim/nerdtree'

    " vim-airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Editor Themes
    "Plug 'jaredgorski/spacecamp'
    Plug 'joshdick/onedark.vim'     
    Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

colorscheme minimalist

" Preferences
set number
set relativenumber

set encoding=UTF-8
set noshowmode

set tabstop=4
set shiftwidth=4
set expandtab

set splitright
set splitbelow

set belloff=all

" Keys remap
noremap ç l
noremap l k
noremap k j
noremap j h

" NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" fzf
set rtp+=/opt/homebrew/opt/fzf
