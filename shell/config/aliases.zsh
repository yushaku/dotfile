##>> shot-cut open config file -------------------------
alias zshconfig="code ~/.zshrc"
alias tmuxconfig="code ~/.tmux.conf"
alias viconfig="cd .config/nvim && nvim ~/.config/nvim/init.lua"

##>> File system tree ------------------
alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'

##>> replate old command of linux ----------
alias e="exit"
alias cl="clear"
alias nvim="vi"
alias bat="batcat"
alias fd="fdfind"
alias ll="exa -lah --time-style=long-iso --icons --colour-scale --group-directories-first"
alias lt="exa --tree -s -I='node_modules|dist|deploy' -L"
alias ss="source ~/.zshrc"

##>> apt manager --------------
alias sid="sudo dpkg -i"
alias si="sudo apt install"
alias srm="sudo apt remove"
alias scl="sudo apt autoremove -y && sudo apt clean -y"
alias supdate="sudo apt update -y && sudo apt upgrade -y"

##>> npm && yarn -------------------
alias n="npm"
alias y="yarn"
alias yrm="yarn remove"
alias ya="yarn add"
alias yad="yarn add -D"
alias yb="yarn build"

##>> pnpm start --------------------------
alias p="pnpm"
alias pi="pnpm install"
alias pa="pnpm add"
alias pad="pnpm add -D"
alias prm="pnpm remove"
alias pb="pnpm build"

export PNPM_HOME="/home/yushaku/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

##>> 1.1.1.1 cloudflare --------------------
alias wcc="warp-cli connect"
alias wcd="warp-cli disconnect"
alias wci="sudo systemctl start warp-svc.service"

##>> Connect wifi  -------------------------
alias wifion="nmcli nm wifi on"
alias wifioff="nmcli nm wifi off"
alias wifishow="nmcli device wifi list"
alias rescanwifi="nmcli device wifi rescan"
cnwifi() {
  nmcli device wifi connect $1 password $2
}

##>> shot-cut create projects ----------------------
alias next="yarn create next-app"

##>> docker && docker compose --------------------
alias d="docker"
alias dco="docker-compose"