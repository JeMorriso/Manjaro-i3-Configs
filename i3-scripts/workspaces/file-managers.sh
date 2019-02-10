#!/bin/bash

i3-msg "workspace 1"

# if there is no content in workspace 1 then open the layout / programs
# assumes that if there is content, then it's correct. 
if [ $( i3-save-tree --workspace 1 | wc -l ) -lt 2 ]
then
	i3-msg  "append_layout ~/.i3/workspace_1.json"
	(thunar &)
	(exec tilix -e ranger)
fi


