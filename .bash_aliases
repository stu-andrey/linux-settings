alias ls='ls --group-directories-first -1 --color=always'

alias run-tmux='
tmux new -s session1 -d
tmux split-window -h -t session1:0.0
tmux attach -t session1'
