" vim-plug
call plug#begin(stdpath('data') . '/plugged')
    " File explorer
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'

    " vim-airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Editor Themes
    "Plug 'jaredgorski/spacecamp'
    Plug 'joshdick/onedark.vim'     
call plug#end()


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

colorscheme onedark 

" Keys remap
noremap ç l
noremap l k
noremap k j
noremap j h

" NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
