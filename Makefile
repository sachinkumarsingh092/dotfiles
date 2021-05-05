# Usage:
# make dry-run: output the files to be updated without any actual change.
# make sync   : synchronize the dotfiles files with the local dotfiles.
#

dry-run:
	rsync -anvP vimrc ~/.vimrc;
	rsync -anvP bashrc ~/.bashrc;
	rsync -anvP zshrc ~/.zshrc;
	rsync -anvP tmux.conf ~/.tmux.conf;
	rsync -anvP i3/ ~/.config/i3;
	rsync -anvP  i3status/ ~/.config/i3status;
	rsync -anvP picom/ ~/.config/picom;
	rsync -anvP polybar/ ~/.config/polybar;
	rsync -anvP vimrc ~/.config/nvim/init.vim


sync:
	rsync -azP vimrc ~/.vimrc
	rsync -azP bashrc ~/.bashrc;
	rsync -azP zshrc ~/.zshrc;
	rsync -azP tmux.conf ~/.tmux.conf;
	rsync -azP i3/ ~/.config/i3;
	rsync -azP  i3status/ ~/.config/i3status;
	rsync -azP picom/ ~/.config/picom;
	rsync -azP polybar/ ~/.config/polybar;
	rsync -azP vimrc ~/.config/nvim/init.vim
