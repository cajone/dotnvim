## Nvim configuration
---
### Note to reader :
This nvim repo contains functionality that I use on a day to day basis, it maybe of no use to you.
The Author (me) strongly recommends that you review the init.vim file and modify to suit or even better 
start with an empty init.vim file and only populate it with configuration / plugins that are of use to you, this will
give you a much stronger understanding of what happens on key presses !!

---
####  Note: the following commands maybe destructive to your existing nvim setup, make sure you move your existing config ( if it exists )
~/.config/nvim  eg:

```zsh
  mv ~/.config/nvim ~/.config/nvim_bak
```

Once done then :

```zsh
mkdir ~/.config/nvim
cd ~/.config/nvim
```

<i><b>( if you have ssh keys in place : Note the trailing dot is important but will only work if nvim is empty )</b></i>

```zsh
git clone git@github.com/cajone/dotnvim.git . 
```

or

<i><b>( Note the trailing dot is important but will only work if nvim is empty )</b></i>

```zsh
git clone https://github.com/cajone/dotnvim.git . 
```


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

