
# Cleaning the Home DIR
#export XDG_CONFIG_HOME="$HOME/.config"
#export XDG_DATA_HOME="$HOME/.local/share"
#export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"

# Bashh
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start Environment
  if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx "$XDG_CONFIG_HOME/X11/xinitrc"
  fi

