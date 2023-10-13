if status is-interactive
echo -e '\e]22;left_ptr\e\\'
    # Commands to run in interactive sessions can go here
end
if test -z $DISPLAY; and test (tty) = "/dev/tty1"
    ~/.config/sway/scripts/sway
end

function ya
    set tmp (mktemp -t "yazi-cwd.XXXXX")
    yazi --cwd-file="$tmp"
    if test -s "$tmp" -a (cat -- "$tmp") != "$PWD"
        cd -- (cat -- "$tmp")
    end
    rm -f -- "$tmp"
end


function vi
    if test (count $argv) -eq 0 
        nvim
    else
        chezmoi verify $argv[1] &> /dev/null && chezmoi edit --watch --hardlink=false $argv[1] || nvim $argv
    end
end

fish_ssh_agent
fzf_configure_bindings --history=\e\cr


# Created by `pipx` on 2023-08-25 19:33:11
set PATH $PATH /home/chiki/.local/bin
# sudoedit
set -Ux SUDO_EDITOR /usr/bin/nvim
set -Ux EDITOR /usr/bin/nvim
set -Ux SYSTEMD_EDITOR /usr/bin/nvim
set -Ux VISUAL /usr/bin/nvim
set -Ux GOPATH $HOME/.go
zoxide init fish | source
theme_gruvbox dark
alias cat=bat
alias ls='eza --icons'                                                          # ls
alias l='eza --icons --icons-lbF --git'                                                # list, size, type, git
alias ll='eza --icons -lbGF --git'                                             # long list
alias llm='eza --icons -lbGd --git --sort=modified'                            # long list, modified date sort
alias la='eza --icons -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
alias lx='eza --icons -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list
alias sw='/home/chiki/.config/sway/scripts/sway'
alias hertz='sh /home/chiki/.config/sway/scripts/hertz.sh'
set -g fzf_fd_opts --hidden --exclude=.git --exclude=go --exclude=.rustup --exclude=.cargo --exclude=.cache --exclude=.mozilla --exclude=.npm --exclude=.local --exclude=.nv --exclude=.pki --exclude=.vim --exclude=.yarn --exclude=.gnupg --exclude=.config/discord/* --exclude=.config --exclude=.node_modules --exclude=.parallel/ --exclude=.subversion/ --exclude=.obsidian/
clear
