The dotfiles I am currently using. I have also included a fabfile for [Fabric](http://www.fabfile.org/) to make it easier to install and manage dependencies, most of which assume that you're using Arch Linux.

Steps to get a basic install going:
* Install a minimal install of Arch Linux, including X11, Xmonad, slim, fabric and git
* Clone this repo into ~ on your user account
* Run "fab pacman"
* Install yaourt
* Run "fab yaourt"
* Run "fab cabal"
* Run "fab oh_my_zsh"
* Run "fab install_vim"

You can update all the Vim bundles using
* "fab update_vim"
