A collection of my dotfiles. Currently there is a configuration for Vim with the following plugins:

* [Pathogen](https://github.com/tpope/vim-pathogen)
* [Solarized Colorscheme for Vim](https://github.com/altercation/vim-colors-solarized)
* [Tagbar](https://github.com/majutsushi/tagbar)
* [fugitive.vim](https://github.com/tpope/vim-fugitive)
* [vim-git](https://github.com/tpope/vim-git)
* [surround.vim](https://github.com/tpope/vim-surround)
* [Supertab](https://github.com/ervandew/supertab)
* [ack.vim](https://github.com/mileszs/ack.vim)
* [Gundo.vim](https://github.com/sjl/gundo.vim)
* [pydoc.vim](https://github.com/fs111/pydoc.vim)
* [vim-flake8](https://github.com/nvie/vim-flake8)
* [Command-T](https://github.com/wincent/Command-T)
* [Powerline](https://github.com/Lokaltog/powerline)

The following steps allow you to get it up and running fairly easily, but it also assumes that you are using Arch Linux. It should hopefully not be too hard to modify the distro-specific parts tho.

* Make sure the various necesary libraries are installed:
    > pacman: gvim python2 python2-pip git ctags ack ruby
    > AUR: python2-powerline-git (either install by hand or use a package manager like yaourt)
    > pip2 install flake8

* Install Pathogen:
    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

* Install the Vim plugins
    cd ~/.vim; \
    git init; \
    git submodule add https://github.com/altercation/vim-colors-solarized bundle/vim-colors-solarized; \
    git submodule add https://github.com/majutsushi/tagbar bundle/tagbar; \
    git submodule add https://github.com/scrooloose/nerdtree bundle/The-NERD-tree; \
    git submodule add https://github.com/tpope/vim-fugitive bundle/vim-fugitive; \
    git submodule add https://github.com/tpope/vim-git bundle/vim-git; \
    git submodule add https://github.com/tpope/vim-surround bundle/vim-surround; \
    git submodule add https://github.com/ervandew/supertab bundle/supertab; \
    git submodule add https://github.com/mileszs/ack.vim bundle/ack; \
    git submodule add https://github.com/sjl/gundo.vim bundle/gundo; \
    git submodule add https://github.com/fs111/pydoc.vim bundle/pydoc; \
    git submodule add https://github.com/nvie/vim-flake8 bundle/vim-flake8; \
    git submodule add https://github.com/wincent/Command-T.git bundle/command-t; \
    cd bundle/command-t; \
    rake make; \
    cd ~/.vim

* Copy .vimrc to ~/

* Add the following code to your .bashrc
    if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
    else
        export TERM='xterm-color'
    fi
