#!/bin/bash

i3-msg "workspace 8"

# if there is no content in workspace 1 then open the layout / programs
# assumes that if there is content, then it's correct. 
if [ $( i3-save-tree --workspace 8 | wc -l ) -lt 2 ]
then
	exec google-chrome-stable
fi


