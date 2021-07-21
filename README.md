# My .vimrc

# To use:
```sh
cd 
git clone https://github.com/ethanh6/.vimrc.git ~/my_dotfile/vim
ln -s ~/my_dotfile/vim/vimrc ~/.vimrc
```

> Make the symlink (.vimrc) in home dir link to actual file `~/my_dotfile/vim/vimrc`, then git could be used.

# TODO:
- Nerd Commenter
- switch to Vundle?
- vim-instant-markdown (instant md rendering): dependency: npm
- easymotion
- python syntax: lots of dependencies

# Hot Keys

| Key comb | In mode |  Effect | Plugin |
|-------   | ------ | ------ | --- |
| Ctrl - t | Normal | Toggle NERDTree | [NERDTree](https://vimawesome.com/plugin/nerdtree-red)
| [space]" | Normal | Surround word with ""|
| [space]( | Normal | Surround word with ()|
| cs[old srd][new srd]| Normal | Change surround | [surround.vim](https://vimawesome.com/plugin/surround-vim) |
| ds[old srd][new srd]| Normal | Delete the word with ()| [surround.vim](https://vimawesome.com/plugin/surround-vim) |
| H | Normal | Toggle Cursor highlighting ||

<br>


# On Mac
control on Mac == Ctrl on Windows

# Dotfile management
- vimrc and readme: `~/.vimrc -> ~/my_dotfile/vim/vimrc`
- plugins: `~/.vim`


# Source
- [Learn vimscript](https://learnvimscriptthehardway.stevelosh.com)
- [Vim Awesome](https://vimawesome.com)
- [Vim documentation](:help whatever)
