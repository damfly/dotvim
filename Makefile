install:
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc
	touch ~/.vimrc.local
	git submodule init
	git submodule update
	mkdir backup

update:
	git pull
