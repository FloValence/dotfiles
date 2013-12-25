# lancer un serveur au port $ et ouvrir
serve_old () {
  open http://localhost:$1
  python -m SimpleHTTPServer $1
}

function serve() {
    local port="${1:-8000}"
    open "http://localhost:${port}/" && python -m SimpleHTTPServer "$port"
}

alias reload!='. ~/.zshrc'

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending
