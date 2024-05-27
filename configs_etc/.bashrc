# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

HISTSIZE=5000
HISTFILESIZE=10000
export n=$(lsb_release -r)
export u=$(uptime -p)
echo -e "  Linux $(uname -r) | $(echo $XDG_SESSION_TYPE) display manager \n"
echo -e "  Quote of the Session: \e[31m$(fortune -s)\e[0m\n"
echo -e "  This computer hasn't been shut down since ${u: 3}\n"
PROMPT_DIRTRIM=1
#eval $(thefuck --alias --enable-experimental-instant-mode)
