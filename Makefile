

install: install-init-nvim

install-init-nvim:
	mkdir -p ~/.vim/backup
	mkdir -p ~/.vim/swp
	mkdir -p ~/.config/nvim/
	ln -s -f ~/etc/init.vim ~/.config/nvim/init.vim

install-xinitrc:
	ln -s -f  ~/etc/xinitrc ~/.xinitrc

install-xmodemap:
	ln -s -f ~/etc/xmodmap.conf ~/.xmodmap
	ln -s -f ~/etc/xmodmap.conf /opt/etc

load-keymap:
	xmodmap xmodmap.conf

create-default-keymap:
	xmodmap -pke > xmodmap.default.conf


install-zshrc:
	ln -s -f ~/etc/zshrc ~/.zshrc


