set nocompatible
filetype off                              " 先关闭文件类型
set rtp+=~/.vim/bundle/vundle             " 将vundle路径添加到插件vim路径
call vundle#rc()                          " 执行Vundle初始化
Bundle 'gmarik/vundle'

Bundle "Lokaltog/vim-powerline"
set laststatus=2
let g:Powerline_symbols='unicode'
Bundle "tpope/vim-commentary"
Bundle "Yggdroot/indentLine"
Bundle "Raimondi/delimitMate"
Bundle "Valloric/YouCompleteMe"
let g:ycm_global_ycm_extra_conf = '/home/guotao/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
nnoremap <F12> :YcmCompleter GoToDefinition<CR>

filetype indent plugin on                 " 安装完后打开文件类型

set number
noremap <silent> <F11> :set number!<CR>

"quick run bash command
noremap <F10> :!

"when terminal supports syntax highlight
if &t_Co > 1
    syntax enable
endif

set hlsearch

set smartindent
set tabstop=4
set shiftwidth=4
"replace tab with space
set expandtab

set relativenumber

map <C-C> gcc
