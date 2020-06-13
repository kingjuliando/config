#
# ~/.bashrc
#

# If not running interactively, don't do anything
  [[ $- != *i* ]] && return
# Language Stuff
  export LANG=en_GB.UTF8
  export LANGUAGE=en_GB.UTF8
  export LC_CTYPE=en_GB.UTF8
# Defaults
  export EDITOR="vim"
  export TERMINAL="terminator"
  export BROWSER="firefox"
  export FILE="ranger"
# Aliases
  alias config='/usr/bin/git --git-dir=/home/ju/.cfg/ --work-tree=/home/ju'
  alias ls='ls --color=tty'
  alias ll='ls -l'
  alias la='ls -la'
  alias cls='clear'
  alias md="mkdir -p"
  alias vpn="sudo protonvpn"
  alias r="ranger"
  alias sxiv="/home/ju/.bin/sxiv.sh"
  alias z="zathura"
  alias free="free -h"
  alias lights="hue lights"
# alias dl="annie -o ${HOME}/Downloads/Video/"
  [ -z /usr/bin/bat ] ; alias cat="bat" 
# Location Aliases
  alias site='cd /srv/http/'
  alias home='cd ${HOME}'
  alias weather='curl http://wttr.in/southampton'
  alias mutt='neomutt'
# Ranger Fix
  export RANGER_LOAD_DEFAULT_RC=false
# PS1
  if [[ "$TERM" -lt 255 ]] ; then
    export PS1='\n\[\033[38;5;3m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;6m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;3m\]@\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;175m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;3m\]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]'
  fi

# FFF
  export FFF_W3M_XOFFSET=20
  export FFF_W3M_YOFFSET=20
# Paths
  export PATH="$PATH:/home/ju/Utils/path"
  export PATH="$PATH:/home/ju/Utils/git"
  export PATH="$PATH:/home/ju/Utils/mutt"
  export PATH="$PATH:/home/ju/Utils/fun"
  export PATH="$PATH:/home/ju/dotfiles"
  export PATH="$PATH:/home/ju/.config/bspwm/bin"
  export PATH="$PATH:/home/ju/Utils/git"
  export PATH="$PATH:/home/ju/.bin"
  export PATH="$PATH:/home/ju/Utils/misc"
# Home DIR Clean
  export CARGO_HOME="$XDG_DATA_HOME"/cargo
  export GNUPGHOME="$XDG_DATA_HOME"/gnupg
  export HISTFILE="$XDG_DATA_HOME"/bash/history
  export NPM_PACKAGES="$XDG_CONFIG_HOME/npm-packages"
  export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
  export PATH="$NPM_PACKAGES/bin:$PATH"
# export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
  export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
  export VIMINIT="source ~/.vim/vimrc"
  export NOTMUCH_CONFIG="$XDG_CONFIG_HOME"/notmuch/notmuchrc
  export NMBGIT="$XDG_DATA_HOME"/notmuch/nmbug⎋k
  export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
  export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
  export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
  export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc 

# Always Neofetch
  neofetch 

# Start Graphical Environment
 if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
   exec startx
 fi
