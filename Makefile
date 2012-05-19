install:
	ln -s ~/.vim/vimrc ~/.vimrc
	touch ~/.vimrc.local
	git submodule init
	git submodule update

update:
	git pull
