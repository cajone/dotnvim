###  Note: the following commands maybe distructive to your existing vim setup make sure you move your
~/.config/nvim  eg:

```zsh
  mv ~/.config/nvim ~/.config/nvim_bak
```

Once done then :

```zsh
mkdir ~/.config/nvim
cd ~/.config/nvim
```

```zsh
git clone git@github.com/cajone/dotnvim.git . 
```
<i><b>( Use this if you have ssh keys in place : Note the trailing dot is important but will only work if nvim is empty )</b></i>

or

```zsh
git clone https://github.com/cajone/dotnvim.git . 
```

<i><b>( Note the trailing dot is important but will only work if nvim is empty )</b></i>

---
#### Plugin manager for this repo is [vim-plugin](https://github.com/junegunn/vim-plug) - Please read this page before continuing.

To install on linux

```zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
For more information on how to drive this plugin manager and to install it on different O.S's : revue this file [README.md](https://github.com/junegunn/vim-plug/blob/master/README.md)


```zsh
mkdir undodir  # this gives you persistent undo capabilities across sessions
```


### \<leader\>
This init.vim file uses <b>'\\'</b>  as its leader key, if you wish to change this to something else change this line in the init.vim

```vim
    let mapleader='\'
```

