# My .vimrc

# To use:
```sh
cd 
git clone https://github.com/ethanh6/.vimrc.git ~/my_dotfile/vim
ln -s ~/my_dotfile/vim/vimrc ~/.vimrc
```

> Make the symlink (.vimrc) in home dir link to actual file `~/my_dotfile/vim/vimrc`, then git could be used.

# TODO:
1. Try vundle?

# Hot Keys

| Key comb | In mode |  Effect | Plugin |
|-------   | ------ | ------ | --- |
| Ctrl - t | Normal | Toggle NERDTree | [NERDTree](https://vimawesome.com/plugin/nerdtree-red)
| [space]ev | Normal | Edit vimrc|
| [space]sv | Normal | Source vimrc|
| jj | Insert | Quit insert mode and save|
| [space]" | Normal | Surround word with ""|
| [space]( | Normal | Surround word with ()|
| cs[old surround][new surround]| Normal | Change surround | [surround.vim](https://vimawesome.com/plugin/surround-vim) 
| ds[old surround][new surround]| Normal | Delete the word with ()|

<br>

# Simple Auto complete
(), [], {}, single quote ('), double quote (")


<br>

# On Mac
control on Mac == Ctrl on Windows

# Dotfile management
- vimrc and readme: `~/.vimrc -> ~/my_dotfile/vim/vimrc`
- plugins: `~/.vim`


# Source
- [Learn vimscript](https://learnvimscriptthehardway.stevelosh.com)
- [Vim Awesome](https://vimawesome.com)