#!/bin/bash

i3-msg "workspace 4"

# if there is no content in workspace 1 then open the layout / programs
# assumes that if there is content, then it's correct. 
if [ $( i3-save-tree --workspace 4 | wc -l ) -lt 2 ]
then
	# appending layout not working correctly but it's fine if I just want 50% split
	#i3-msg  "append_layout ~/.i3/workspace_4.json"
	tilix -e ~/master-configs-and-scripts/i3-scripts/workspaces/open-i3-config.sh
	google-chrome-stable --new-window https://wiki.archlinux.org/index.php/i3 \
		https://i3wm.org/docs/userguide.html \
		https://www.howtogeek.com/howto/ubuntu/keyboard-shortcuts-for-bash-command-shell-for-ubuntu-debian-suse-redhat-linux-etc/ \
		https://danielmiessler.com/study/vim/ \
		https://github.com/ranger/ranger/wiki/Official-user-guide \
		https://code.visualstudio.com/docs/getstarted/tips-and-tricks \
		https://www.jetbrains.com/help/pycharm/keyboard-shortcuts-by-category.html \
		https://blog.hubspot.com/sales/chrome-keyboard-shortcuts \
		https://wiki.archlinux.org/index.php/Pacman \ 
		https://git-scm.com/docs
fi


