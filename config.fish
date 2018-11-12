fish_vi_mode

function fish_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.config/fish/.shell_prompt.sh left
end

function fish_right_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.config/fish/.shell_prompt.sh right
end

set -gx PATH $HOME/anaconda3/bin $PATH
set -gx EDITOR vim

function ec
    set -q EDITOR; or return 1
    set -l tmpfile (mktemp); or return 1
    commandline > $tmpfile
    eval $EDITOR $tmpfile
    commandline -r (cat $tmpfile)
    rm $tmpfile
end


