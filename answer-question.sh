#!/bin/bash

if [ -n "$TMUX" ]; then
  # get the tmux session name
  tmux_session=$(tmux display-message -p '#S')
  notify-send --urgency=critical 'Claude Question' "Asking question in session: $tmux_session" -t 3000
else
  notify-send --urgency=critical 'Claude Question' "Asking you a question" -t 3000
fi
