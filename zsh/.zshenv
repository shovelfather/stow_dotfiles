. "${HOME}/.cargo/env"
export PATH=$PATH:/snap/bin
export PATH=$PATH:${HOME}/.local/share/gem/ruby/3.0.0/bin
export PATH=$PATH:${HOME}/.local/bin
export PATH=$PATH:${HOME}/.pyenv/bin
export PATH=${PATH}:${GOBIN}


export PATH_TO_FX=${HOME}/.local/lib/javafx-sdk-22.0.2/lib
export XDG_CONFIG_HOME="${HOME}/.config"

export KEYTIMEOUT=1

export MSF_DATABASE_CONFIG=/opt/metasploit/config/database.yml

export GOBIN=${HOME}/.local/bin

export LIBVIRT_DEFAULT_URI=qemu:///system

export PAGER="/usr/bin/less"
export EDITOR="/usr/bin/nvim"
export AWS_PROFILE="default"

export LESS=-R

export FZF_DEFAULT_OPTS=" \
--color=spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
alias lzd="lazydocker"
alias lzg="lazygit"
alias k="kubectl"
alias mk="microk8s kubectl"
alias trivyscan="docker run -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/Library/Caches:/root/.cache/ aquasec/trivy:0.52.2 image"
alias e="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions -G"


export LS_COLORS="$(vivid generate catppuccin-macchiato)"
