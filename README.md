# vimfiles
> Chunming's personal ```.vimrc``` file.

## How to use
1. make sure that you've installed [Vundle](https://github.com/VundleVim/Vundle.vim)
2. Clone the repository into ```~/.vim``` and . As following
  ```sh
  $ cd ~/.vim
  $ git clone https://github.com/Chun-MingChen/vimfiles.git
  ```
3. make symbolic link and install the plugins.
  ```sh
  $ ln -s ~/.vim/vimfiles/vimrc ~/.vimrc 
  $ vim +PluginInstall +qall
  ```
4. As long as revising the ```vimrc```, your  ```~/.vimrc``` will change together.

## Colors

### honukai
https://github.com/oskarkrawczyk/honukai-iterm-zsh

1. Open Preferences and switch to the ```Profiles > Colors``` tab
2. import ```honukai.itermcolors``` in the  ```color presets```   (drop-down in the lower right corner)
