set nocompatible
syntax on 
set encoding=utf-8

"""""" Interface """"""""
set number             " show line numbers
set relativenumber
set mouse=a            " enable mouse
set t_Co=256           " set color
colorscheme torte

highlight CursorLine cterm=underline
set cursorcolumn
set ruler
set ignorecase         " ignore case when searching
set smartcase          " rigorous search when search with capitale letters
set hlsearch         " high light search result
highlight Search cterm=reverse ctermbg=none ctermfg=none
set incsearch          " search while entering text
set autoindent         " basic indent
set smartindent        " indent of "{" and "}"
set cindent            " basic functionality with c / c++ / java
set expandtab          " transform tab into spaces
set tabstop=4          " set tab = 4 spaces
set softtabstop=4    
set shiftwidth=4
set smarttab
set scrolloff=10  " up / down till the number, the screen will move
set backspace=indent,eol,start  " allow backspace to delete indent, and back to previous line
set wrap          " if a line is too lone, wrap to next line

"""""" backup setting """"""
set confirm               " set to confirm some unexpected behavior
set nobackup
set noswapfile
set autowrite     " auto save file

"""""" bstatus bar """"""
set statusline=[%{expand('%:p')}][%{strlen(&fenc)?&fenc:&enc},\ %{&ff},\ %{strlen(&filetype)?&filetype:'plain'}]%{FileSize()}%{IsBinary()}%=%c,%l/%L\ [%3p%%]

function IsBinary()
    if (&binary == 0)
        return ""
    else
        return "[Binary]"
    endif
endfunction

function FileSize()
    let bytes = getfsize(expand("%:p"))
    if bytes <= 0
        return "[Empty]"
    endif
    
    if bytes < 1024
        return "[" . bytes . "B]
    elseif bytes < 1048576
        return "[" . (bytes / 1024) . "KB]"
    else
        return "[" . (bytes / 1048576) . "MB]"
    endif
endfunction



