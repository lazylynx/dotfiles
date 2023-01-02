colorscheme iceberg
set background=dark

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set number
set signcolumn=number
map /// :%s/\v
set list
set listchars=tab:>.,trail:_,extends:>,precedes:<,nbsp:%
set directory=~/.vim/cache
set backupdir=~/.vim/bk
set backspace=indent,eol,start

call plug#begin()
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
