

install: install-init-nvim

install-init-nvim:
	mkdir -p ~/.vim/backup
	mkdir -p ~/.vim/swp
	mkdir -p ~/.config/nvim/
	ln -s ~/etc/init.vim ~/.config/nvim/init.vim

install-xinitrc:
	ln -s ~/etc/xinitrc ~/.xinitrc

load-keymap:
	xmodmap xmodmap.conf

create-default-keymap:
	xmodmap -pke > xmodmap.default.conf

