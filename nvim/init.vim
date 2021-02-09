set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set tabstop=4
set shiftwidth=4


map  <C-h> <C-w>h
map  <C-j> <C-w>j
map  <C-k> <C-w>k
map  <C-l> <C-w>l


set nu rnu
set splitbelow splitright
autocmd BufWritePost $HOME/.config/picom/picom.conf !killall picom; /usr/bin/picom --config $HOME/.config/picom/picom.conf  -b

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

	Plug 'tpope/vim-unimpaired'
	Plug 'daeyun/vim-matlab'
	Plug 'honza/vim-snippets'
	Plug 'Valloric/YouCompleteMe'

call plug#end()
