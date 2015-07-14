execute pathogen#infect()
syntax on
filetype plugin indent on


syntax enable
colorscheme molokai


set rtp+=~/.fzf
set number 


map <F1> :FZF<CR>
map <F2> :NERDTreeToggle<CR>
map <c-j> :m .+1<CR>==
map <c-k> :m .-2<CR>==


"Syntatic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"Syntatic end


"Real time git gutter settings
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
"Gitgutter end


"Column limit
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(400,999),",")


"Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
filetype plugin indent on

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2


"Python stuff
set tabstop=4
set shiftwidth=4
set expandtab

let g:jedi#auto_initialization = 0
