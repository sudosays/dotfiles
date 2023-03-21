function eco
         # EmacsClient Open
         emacsclient -n -a "" $argv
end

function ll
         ls -l $argv
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
end


if status is-interactive
and not set -q TMUX
    if tmux has-session -t home
	exec tmux attach-session -t home
    else
        tmux new-session -s home
    end
end
