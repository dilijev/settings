source ~/.bash-colors

#PS1="\t ${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "
PS1="${RED}\t ${GREEN}${debian_chroot:+($debian_chroot)}\u@\h${NORMAL}:${CYAN}\w${NORMAL}\$ "

#PS1="\t ${GREEN}${debian_chroot:+($debian_chroot)}\u@\h${NORMAL}:${CYAN}\w${NORMAL}\$ "
#PS1="\t ${GREEN}${debian_chroot:+($debian_chroot)}\u@\h${NORMAL}:${CYAN}\w${NORMAL}\$ "
#PS1="\t ${BRIGHT_GREEN}${debian_chroot:+($debian_chroot)}\u@\h${NORMAL}:${BRIGHT_BLACK}\w${NORMAL}\$ "
#PS1="${RED}\t ${BRIGHT_GREEN}${debian_chroot:+($debian_chroot)}\u@\h${NORMAL}:${BRIGHT_BLACK}\w${NORMAL}\$ "
#PS1="${RED}\t ${BRIGHT_GREEN}${debian_chroot:+($debian_chroot)}\u@\h${NORMAL}:${BRIGHT_BLUE}\w${NORMAL}\$ "


export HISTCONTROL=erasedups


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
      . ~/.bash_aliases
fi

