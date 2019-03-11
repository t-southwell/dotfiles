execute pathogen#infect()
set t_Co=256
syntax enable 
set title
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set incsearch
set hlsearch
nnoremap k gk
nnoremap j gj
map<F6> :setlocal spell! spelllang=en_us<CR>
set number
colorscheme anderson
let g:vimtex_view_general_viewer = 'zathura'
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

