#!/bin/bash
ws=$1

i3-msg "workspace $ws"

# if there is no content in workspace 1 then open the layout / programs
# assumes that if there is content, then it's correct. 
if [ $( i3-save-tree --workspace $ws | wc -l ) -lt 2 ]
then
	exec google-chrome-stable --new-window https://calendar.google.com/calendar/r/week \
    https://trello.com/b/MC3z9rag/todo
fi


