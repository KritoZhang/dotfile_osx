# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerline"
POWERLINE_DATE_FORMAT="%D{%d-%m}"
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_DETECT_SSH="true"
POWERLINE_GIT_CLEAN="✔"
POWERLINE_GIT_DIRTY="✘"
POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
POWERLINE_GIT_UNTRACKED="%F{cyan}✭%F{black}"
POWERLINE_GIT_RENAMED="➜"
POWERLINE_GIT_UNMERGED="═"
POWERLINE_RIGHT_A_COLOR_FRONT="black"
POWERLINE_RIGHT_A_COLOR_BACK="red"
# }

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump zsh-syntax-highlighting colored-man colorize github python osx brew ruby zsh-completions color-command)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH:/opt/local/bin
# export MANPATH="/usr/local/man:$MANPATH"
# export PATH=/sr/local/opt/coretils/liexec/nbin:$PATH
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# export LSCOLORS="Gxfxcxdxbxegedabagacad"
# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# Android SDK PATH
#  export PATH=/
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="vim ~/.zshrc"
 alias vimconfig="vim ~/.vimrc"
 alias pc=proxychains4
# alias mongod="mongod -config /usr/local/etc/mongod.conf"
# alias browser="browser-sync start --server --directory --files"
 alias browser="browser-sync start --server --directory --files '**/*'"
 alias apiprint="aglio -s -i"
 alias auroraapi="aglio -i AuroraServer.md -o AuroraServer.html"
 alias redis-server="redis-server /usr/local/etc/redis.conf"
 alias pg="postgres -D /usr/local/var/postgres"
 alias s="rails s"
 alias pc="proxychains4"
# alias python=python3
# alias ipython=ipython3
# alias pip=pip3
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#EDITOR
EDITOR=/usr/local/bin/vim
#
#Pyrhon setting
#export PYENV_ROOT=/usr/local/var/pyenv
#if which pyenv > /dev/null; then
#    eval "$(pyenv init -)"; fi

#Ruby Setting
#export RBENV_ROOT=/usr/local/var/rbenv
#if which rbenv > /dev/null; then
    #eval "$(rbenv init -)";
#fi

PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
#Java Setting
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home
PATH=$JAVA_HOME/bin:$PATH:.
CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:/usr/local/share/java/zmq.jar.
export JAVA_HOME
export PATH
export CLASSPATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#PostgreSQL Setting
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Add GHC 7.10.2 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.2.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# Home Brew Setting
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
# export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# where proxy 9090
proxy () {
  export http_proxy="http://127.0.0.1:9090" # http代理地址
  export https_proxy="http://127.0.0.1:9090" # https代理地址
  echo "HTTP Proxy on"
}

# where noproxy
noproxy () {
  unset http_proxy
  unset https_proxy
  echo "HTTP Proxy off"
}


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

