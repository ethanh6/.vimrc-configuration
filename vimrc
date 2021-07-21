set nocompatible
set encoding=utf-8

" Appearance 
set number             
set relativenumber
set mouse=a            " enable mouse
set t_Co=256           " set color, (Terminal COlor)
set ruler

" color stuff, cterm: color terminal
colorscheme slate
set cursorline cursorcolumn
hi CursorLine cterm=NONE ctermbg=darkgray ctermfg=white
" toggle cursorline
nnoremap H :set cursorline! cursorcolumn!<CR>

" set autochdir to current dir
autocmd BufEnter * silent! lcd %:p:h

" Finding Files
" Search down into sub-directories
" Provides tab-completion for all file-related tasks
set path+=**

" Search text in file
set ignorecase         " ignore case when searching
set smartcase          " rigorous search when search with capitale letters
" set hlsearch           " high light search result
highlight Search cterm=reverse ctermbg=none ctermfg=none


set incsearch          " search while entering text
set autoindent         " basic indent
set smartindent        " indent of "{" and "}"
set cindent            " basic functionality with c / c++ / java
set expandtab          " transform tab into spaces
set tabstop=4          " tab = 4 spaces
set softtabstop=4    
set shiftwidth=4
set smarttab
set scrolloff=12  " up or down till the number, the screen will move
set backspace=indent,eol,start  " allow backspace to delete indent, and back to previous line

set clipboard=unnamedplus

""""""""" backup setting """"""
set confirm               " set to confirm some unexpected behavior
set nobackup
set noswapfile
set autowrite     " auto save file


"""""" status line """"""
" define 3 customized color group
hi User1 ctermbg=gray ctermfg=green guibg=green guifg=red
hi User2 ctermbg=lightgray ctermfg=black guibg=red guifg=blue
hi User3 ctermbg=blue ctermfg=white guibg=green guifg=yellow
hi User4 ctermbg=white ctermfg=black guibg=green guifg=yellow

" set always show
set laststatus=2   " always show status bar
set statusline=                            " build concatenation
set statusline+=%1*  " color User1
set statusline+=[Buf\.%n]
set statusline+=%2*  " color User2
set statusline+=[%{expand('%:p')}]         " file path
set statusline+=%3*  " color User3
set statusline+=%{StatuslineGitBranch()}   " git branch
set statusline+=[%{strlen(&filetype)?&filetype:'plain'}]  " Filetype
set statusline+=%= 
set statusline+=
set statusline+=%4*  " color User4
set statusline+=\(%c,%l\)\ \-\ %2L,%p%%\ \-\ 
set statusline+=%{FileSize()}
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]  " encoding
" set statusline+=[%{&ff}]    "  system

function! StatuslineGitBranch()
    let l:branch_name = system("git rev-parse abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    return strlen(l:branch_name)>0?"[xx".l:branch_name."xx]":"[no git]"
endfunction

function IsBinary()
    if (&binary != 0)
        return "[Binary]"
    else
        return ""
    endif
endfunction

function CurrentPosition()
        return printf(" %.2f%%", (100.0*line(".")/line("$")) )
endfunction

function FileSize()
    let bytes = getfsize(expand("%:p"))
    if (bytes <= 0)
        return "[Empty]"
    elseif (bytes < 1024)
        return "[" . bytes . "B]"
    elseif (bytes < 1048576)
        return "[" . (bytes / 1024) . "KB]"
    else
        return "[" . (bytes / 1024*1024) . "MB]"
    endif
endfunction


" Easy editing Vimrc file
let mapleader = " " 

" nnoremap = Normal mode, NO REcursion, MAPping
nnoremap <leader>ev :vsplit $MYVIMRC<ENTER>
nnoremap <leader>sv :source $MYVIMRC<ENTER>


"""""" Vim Plug """"""

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'chun-yang/auto-pairs'
Plug 'preservim/nerdcommenter'

call plug#end()

" TO Use Plugins:
" :sv
" :PlugInstall

"" NERDTree """

" Ctrl-T to toggle NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

" close NERDTree when NERDTree is the last window
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

