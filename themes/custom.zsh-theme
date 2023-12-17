# Set required options
#
setopt prompt_subst

preprompt_left() {
  # pwd, 24-hour time, optional ssh marker
  echo "%F{226}%~%f %F{130}%*%f%F{246}${SSH_TTY:+ SSH}%f"
}

precmd() {
  print ""  # newline
  print -P "$(preprompt_left)"
}

PROMPT="> "
RPROMPT="%n"

