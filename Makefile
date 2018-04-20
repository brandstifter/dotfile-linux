

install: install-init-nvim

install-init-nvim:
	mkdir -p ~/.vim/backup
	mkdir -p ~/.vim/swp
	mkdir -p ~/.config/nvim/
	ln -s ~/etc/init.vim ~/.config/nvim/init.vim

install-xinitrc:
	ln -s ~/etc/xinitrc ~/.xinitrc

install-xmodemap:
	ln -s ~/etc/xmodmap.conf ~/.xmodmap

load-keymap:
	xmodmap xmodmap.conf

create-default-keymap:
	xmodmap -pke > xmodmap.default.conf


install-zshrc:
	ln -s ~/etc/zshrc ~/.zshrc


