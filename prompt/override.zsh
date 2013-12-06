override_user_name() {
  if [[ "$USER" == "rmcdonald" ]] ; then
    export OVERRIDE_USER="ross"
  else
    export OVERRIDE_USER=$USER
  fi
  echo "%{$fg_bold[magenta]%}$OVERRIDE_USER%{$reset_color%}"
}

override_server_name() {
  if [[ "$HOST" == "rmcdonald-desktop" ]] ; then
    export OVERRIDE_HOST="passiv-desktop"
  elif [[ "$HOST" == "rmcdonald-desktop-vm" ]] ; then
    export OVERRIDE_HOST="passiv-desktop-vm"
  else
    export OVERRIDE_HOST=$HOST
  fi
  echo "%{$fg_bold[magenta]%}@$OVERRIDE_HOST%{$reset_color%}"
}

export OVERRIDE_PROMPT=$'\n$(override_user_name)$(override_server_name) $(rb_prompt)in $(directory_name) $(git_dirty)$(need_push)\n› '
