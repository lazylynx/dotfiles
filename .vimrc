colorscheme iceberg

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set number
map /// :%s/\v
set list
set listchars=tab:>.,trail:_,extends:>,precedes:<,nbsp:%
set directory=~/.vim/cache
set backupdir=~/.vim/bk
if !has("gui_running")
  syntax on
  highlight Normal ctermbg=none
  colorscheme iceberg
endif

call plug#begin()
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
call plug#end()
