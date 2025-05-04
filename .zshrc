autoload -U colors && colors

# lib
source ~/.zshscripts/git.lib.zsh

PROMPT='
[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%~%{$reset_color%}%{$fg[yellow]%}$(git_branch_name)%{$reset_color%}
%(!.#.$) '

# shell
unsetopt BEEP
setopt prompt_subst

# zshscripts
autoload -Uz compinit
compinit

# plugins
source ~/.zshscripts/git.plugin.zsh
source ~/.zshscripts/kubectl.plugin.zsh

# fzf
source <(fzf --zsh)

# aliases
alias tf="terraform"
alias compose="docker-compose"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
