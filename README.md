~/.vim
======

I was previously using [janus]("https://github.com/carlhuda/janus") but… I've decided to
make my own.

**It's a work in progress.**

It features:

* [vim-powerline]("https://github.com/Lokaltog/vim-powerline/"),
* [ctrlp]("https://github.com/kien/ctrlp.vim"),
* [The NerdTree]("https://github.com/scrooloose/nerdtree.git"),
* [solarized]("http://ethanschoonover.com/solarized") theme,
* support for Ruby, Rails, CoffeeScript, JavaScript out of the repo,
* and moar (have a look in `bundle/`).

## Dependencies

* For CoffeeScript: nodejs, coffee-script, coffeelint
* For JavaScript: jslint
* For Ruby: ruby!
* For taglist-plus: ctags
* A [patched font]("https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts") for powerline,
* Maybe others

## Install

If you already have a `~/.vim` or `~/.vimrc`, move them.

    cd ~
    git clone http://github.com/eraserewind/vimrc.git .vim
    cd .vim
    make install

## Update

    cd ~/.vim
    make update

## Customize

Make a fork. Install your fork. Change, commit, enjoy.

