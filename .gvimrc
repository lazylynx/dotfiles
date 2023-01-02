set browsedir=$HOME/Desktop
set showtabline=2

set background=dark
colorscheme hybrid_material

set transparency=5
set imdisable
set guioptions-=T
set antialias
set tabstop=4
set number
set nobackup
set visualbell t_vb=
set nowrapscan
set columns=100
set lines=48
map /// :%s/\v
map :del :'s,'ed
map :copy :'s,'ey
map :rep :'s,'es
noremap <c-tab> :tabnext<cr>

highlight LineNr guifg=#FFFFFF

set laststatus=0
