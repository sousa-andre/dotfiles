# oh my zsh
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="robbyrussell"
PROMPT='
[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%~%{$reset_color%}$(git_prompt_info)
%(!.#.$) '

COMPLETION_WAITING_DOTS="true"

plugins=(git aws helm kubectl)

# brew (needs to be here because of kubectl)
export PATH="$PATH:/opt/homebrew/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/$USERNAME/Library/Application"

source $ZSH/oh-my-zsh.sh

#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

# shell
unsetopt BEEP

# android
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

# dart
export PATH="$PATH":"$HOME/.pub-cache/bin"

# alias
alias tf="terraform"
# disable kc alias (should use k instead)
#alias kc="kubectl"
alias compose="docker-compose"
alias hf="helmfile"

# go
export GOPATH=/Users/$USERNAME/go
export GOBIN=$GOPATH/bin

# iterm2
bindkey "[D" backward-word
bindkey "[C" forward-word
#
# jetbrains
export PATH="$PATH:/Users/$USERNAME/Library/Application Support/JetBrains/Toolbox/scripts"

# pipx
export PATH="$PATH:/Users/$USERNAME/.local/bin"

# rvm
export PATH="$PATH:$HOME/.rvm/bin"

# nvm
export NVM_DIR=/Users/$USERNAME/.nvm
  [ -s /opt/homebrew/opt/nvm/nvm.sh ] && \. /opt/homebrew/opt/nvm/nvm.sh  # This loads nvm
  [ -s /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm ] && \. /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm  # This loads nvm bash_completion

# sublime
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# completion scripts
source <(colima completion zsh)
source <(minikube completion zsh)
source <(istioctl completion zsh)
#
#
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
