#!/bin/bash

if [ -n "$TMUX" ]; then
  # get the tmux session name
  tmux_session=$(tmux display-message -p '#S')
  notify-send 'Claude' "Ready for input in session: $tmux_session" -t 3000
else
  notify-send 'Claude' 'Ready for input.' -t 3000
fi
