set background=dark
colorscheme hybrid_material

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
  set background=dark
  colorscheme hybrid_material
  highlight Normal ctermbg=none
endif
