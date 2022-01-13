# history
function peco-select-history() {
local tac
if which tac > /dev/null; then
  tac="tac"
else
  tac="tail -r"
fi
BUFFER=$(\history -n 1 | \
  eval $tac | \
  peco --query "$LBUFFER")
CURSOR=$#BUFFER
zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# ghq
function peco-src () {
  local selected_dir=$(ghq list | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd $(ghq root)/${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

# env
function peco-env {
    local appenv=$( (echo development; echo staging; echo production; echo sandbox;) | peco)
    if [ -n "$appenv" ]; then
        APP_ENV=$appenv
        export APP_ENV
        echo -n "APP_ENV is now $APP_ENV"
    fi
    zle accept-line
}
zle -N peco-env
bindkey '^E' peco-env
