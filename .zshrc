# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export ZSH="$HOME/.oh-my-zsh"
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
export PATH=$PATH:$HOME/f/qemu/build
export PATH=$PATH:$HOME/f/riscv64-unknown-elf-gcc-8.3.0-2020.04.1-x86_64-apple-darwin/bin
export CONFIG="$HOME/Library/Application Support/espanso"

ZSH_THEME="spaceship"

DISABLE_AUTO_TITLE="true"
function precmd () {
  print -Pn - '\e]0;%1~\a'
}

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	npm-scripts
)

alias gp='git push'
alias gcl='git clone'
alias gcm='git commit -m'
alias gcam='git add . && git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias grb='git rebase'
alias gpl='git pull'
alias gs='git stash'
alias gsp='git stash pop'
alias gf='git fetch'
alias p='pnpm'
alias gf='git fetch'
alias gmg='git merge'
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $ZSH/oh-my-zsh.sh

function f() {
  if (($# == 0)) 
  then cd ~/f
  else
  cd ~/f/$1
  fi
}
function i() {
  if (($# == 0)) 
  then cd ~/i
  else
  cd ~/i/$1
  fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

alias git='LANG=en_GB git'
eval "$(zoxide init zsh)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
