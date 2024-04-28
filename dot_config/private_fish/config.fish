function ya
    set tmp (mktemp -t "yazi-cwd.XXXXX")
    yazi --cwd-file="$tmp"
    if test -s "$tmp" -a (cat -- "$tmp") != "$PWD"
        cd -- (cat -- "$tmp")
    end
    rm -f -- "$tmp"
end

alias cat='bat'
alias ls='eza --icons'                                                          # ls
alias l='eza --icons --icons -lbF --git'                                                # list, size, type, git
alias ll='eza --icons -lbGF --git'                                             # long list
alias llm='eza --icons -lbGd --git --sort=modified'                            # long list, modified date sort
alias la='eza --icons -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
alias lx='eza --icons -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list
alias chi='chezmoi edit --apply'

set -Ux SUDO_EDITOR /usr/bin/nvim
set -Ux EDITOR /usr/bin/nvim
set -Ux SYSTEMD_EDITOR /usr/bin/nvim
set -Ux VISUAL /usr/bin/nvim
set -Ux GOPATH $HOME/.go


if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting

function ya
	set tmp (mktemp -t "yazi-cwd.XXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# Created by `pipx` on 2024-03-04 20:43:17
set PATH $PATH /home/chiki/.local/bin

alias hertz='sh ~/.config/hypr/scripts/refresh_rate.sh'
fish_ssh_agent
