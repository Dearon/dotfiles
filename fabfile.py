from fabric.api import local

vim_bundles = [
    {
        'git': 'git://github.com/altercation/vim-colors-solarized.git',
        'path': '~/.vim/bundle/vim-colors-solarized'
    },
    {
        'git': 'git://git.wincent.com/command-t.git',
        'path': '~/.vim/bundle/command-t'
    },
    {
        'git': 'git://github.com/mileszs/ack.vim.git',
        'path': '~/.vim/bundle/ack.vim'
    },
    {
        'git': 'git://github.com/tpope/vim-fugitive.git',
        'path': '~/.vim/bundle/vim-fugitive'
    },
    {
        'git': 'git://github.com/sjl/gundo.vim.git',
        'path': '~/.vim/bundle/gundo.vim'
    },
    {
        'git': 'git://github.com/ervandew/supertab.git',
        'path': '~/.vim/bundle/supertab'
    },
    {
        'git': 'git://github.com/Raimondi/delimitMate.git',
        'path': '~/.vim/bundle/delimitMate'
    },
    {
        'git': 'git://github.com/docunext/closetag.vim.git',
        'path': '~/.vim/bundle/closetag.vim'
    },
    {
        'git': 'git://github.com/shawncplus/phpcomplete.vim.git',
        'path': '~/.vim/bundle/phpcomplete.vim'
    },
    {
        'git': 'git://github.com/majutsushi/tagbar.git',
        'path': '~/.vim/bundle/tagbar'
    },
    {
        'git': 'git://github.com/StanAngeloff/php.vim.git',
        'path': '~/.vim/bundle/php.vim'
    }
]

def pacman():
    local('sudo pacman -Syu')
    local('sudo pacman -S ruby zsh tk gvim ack wget curl cabal-install xmobar dmenu python2-psutil python2-pygit2 chromium firefox xautolock xchat pragha vlc gst-plugins-good gst-plugins-bad thunar thunar-volman p7zip wxgtk2.8 evince unrar unzip gnome-icon-theme keepassx steam')

def yaourt():
    local('yaourt -Syua')
    local('yaourt -S termite-git')
    local('yaourt -S python2-powerline-git')
    local('yaourt -S ctags-php-git')
    local('yaourt -S conky-cli')
    local('yaourt -S sxlock-git')
    local('yaourt -S hal')

def cabal():
    local('sudo cabal install yeganesh --global')

def oh_my_zsh():
    local('curl -L http://install.ohmyz.sh | sh')

def install_vim():
    local('mkdir -p ~/.vim/autoload ~/.vim/bundle')
    local('curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim')

    for bundle in vim_bundles:
        local('git clone ' + bundle['git'] + ' ' + bundle['path'])

    local('cd ~/.vim/bundle/command-t/ruby/command-t')
    local('ruby extconf.rb && make')
    local('cd ~')

def update_vim():
    for bundle in vim_bundles:
        local('cd ' + bundle['path'] + ' && git pull')

    local('cd ~')
