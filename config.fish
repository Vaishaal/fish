fish_vi_key_bindings

function fish_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.config/fish/.shell_prompt.sh left
end

function fish_right_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.config/fish/.shell_prompt.sh right
end

set -gx PATH $HOME/anaconda3/bin $PATH
set -gx EDITOR vim

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

function ec
    set -q EDITOR; or return 1
    set -l tmpfile (mktemp); or return 1
    commandline > $tmpfile
    eval $EDITOR $tmpfile
    commandline -r (cat $tmpfile)
    rm $tmpfile
end


