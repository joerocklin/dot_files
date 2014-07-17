# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

source ~/.profile

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git debian knife)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/home/joe/bin:/home/joe/.rvm/bin:/home/joe/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
export PATH=/opt/chefdk/embedded/bin:$PATH

[[ -s /home/joe/.nvm/nvm.sh ]] && . /home/joe/.nvm/nvm.sh # This loads NVM

export GOPATH=/data/go

alias qd='date +"%Y%m%d-%H%M%S"'
alias pssh_testbed='parallel-ssh -h ~/testbed/testbed_hosts -i'
alias pssh_ceph='parallel-ssh -h ~/testbed/testbed_ceph_hosts -i'
alias pssh_mariadb='parallel-ssh -h ~/mariadb_hosts -i'

export EDITOR=vim

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 1
zstyle :compinstall filename '/home/joe/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
