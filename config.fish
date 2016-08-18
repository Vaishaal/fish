fish_vi_key_bindings
set -gx PATH $PATH ~rc/bin/
set -gx PATH $PATH ~osdev/bin
alias e='emacsclient -t --alternate-editor=""'
#alias vi='nvim'
#alias vim='nvim'
# in .config.fish

function fish_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.config/fish/.shell_prompt.sh left
end

function fish_right_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.config/fish/.shell_prompt.sh right
end


