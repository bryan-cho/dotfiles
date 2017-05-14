# Dotfiles

These are the dotfiles I use to configure VIM and Z shell.

## Contents
* `.vim` - contains color configurations
* `.vimrc` - contains my preferred VIM configurations
* `.zshrc` - contains my preferred Zshell configurations (although this isn't necessarily transferrable to every PC)

## Prerequisites

* [Homebrew](http://brew.sh/)
* [Zsh](https://github.com/robbyrussell/oh-my-zsh)
* `Python 2.7`
* `MacVim` (If using Mac)
* `CMake`

```bash
brew install python
brew install macvim
brew install cmake
```

Note: If Python was installed through a package obtained from the official website, it may need to be removed prior to installing using Homebrew.

## Instructions

1. Clone repo
2. Move `.vim`, `.vimrc`, `.zshrc` to home directory
3. Install [Vundle](https://github.com/VundleVim/Vundle.vim#quick-start)
4. Open VIM and run `:PluginInstall` and `:BundleInstall` to install `YouCompleteMe` and `Powerline`
5. Install NERDTree using command below

*Note*: sometimes you may need to manually install YouCompleteMe after running the above commands:

```bash
cd ~/.vim/bundle/YouCompleteMe
python ./install.py
```

Installing NERDTree should be easy as:

`cd ~/.vim/bundle`

`git clone https://github.com/scrooloose/nerdtree.git`

To complete installation of `YouCompleteMe`, run the following:

```bash
cd ~/.vim/bundle/YouCompleteMe
./install.py --all
``` 

Color configurations/plugins may not be available immediately, although it is stored in this repo so it should work.
Comment lines for color scheme and plugins if only VIM settings are desired.

## Troubleshooting

* `YouCompleteMe` requires `MacVim` with `Python`.
* Comment out the line that aliases `vim` in `.zshrc` and enable it again after following instructions to install MacVim in their official docs. 
* YouCompleteMe may not work right off the bat. The easiest solution is to uninstall `Python`, `MacVim`, and `YouCompleteMe` and to do a fresh reinstall using Homebrew and Vundle. 
  * Install `Python` and `MacVim` first!
* Powerline may not show the fonts properly at first. Install fonts using this: [https://github.com/powerline/fonts](https://github.com/powerline/fonts)
  * I found `Roboto Mono Thin` to be nice looking with font anti-aliasing on.
* Setting up Powerline on Ubuntu is easy with this link: [http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin](http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin)

## General Setup

Some things to install when first setting up a new machine:

1. OneNote
2. [Spotify](https://www.spotify.com/us/)
3. [Chrome](https://www.google.com/chrome/browser/desktop/index.html)
4. KakaoTalk
5. [Dotfiles](https://github.com/bryanc208/dotfiles)
6. [Spectacle](https://www.spectacleapp.com/)
7. git
8. [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
9. Homebrew
10. Python + pip
11. Everything required by dotfiles

Some things to setup:

1. SSH key for Github
2. Login to services (App Store, Chrome, etc.)
3. Display size, trackpad sensitivity, etc.

Nice to haves:

1. LaTeX
2. MacDown

## Extras

Some extra stuff that might be nice depending on what I'm working on:

1. Typescript highlighting: [link](https://github.com/leafgarland/typescript-vim)
