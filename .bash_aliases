#echo "loading .bash_aliases"

alias grep='grep --color=auto'
alias ls='ls --color=always --group-directories-first'
alias ll='ls -lA'
alias lx='ls -lX'

alias pride='ssh dilijev@pride.cs.utexas.edu'
alias liukang='ssh dilijev@liukang.ece.utexas.edu'
alias vier='ssh doug@vier.csres.utexas.edu'

alias aledit='nano ~/.bash_aliases'
alias valedit='vim ~/.bash_aliases'
alias galedit='gedit ~/.bash_aliases'
alias alrl='source ~/.bash_aliases'
alias alrc='source ~/.bashrc'
alias saveset='cp ~/.bash* ~/settings/; cp ~/.git* ~/settings/'

alias exe='chmod 755'
alias go='nautilus'
alias open='nautilus .'
alias view='open'
alias cls='clear'
alias clc='clear'
alias up='cd ..'
alias u='up'

if [ -f ~/dropbox ]; then
	alias dropbox='~/dropbox' #program
fi
alias dbstart='dropbox start'
alias dbstop='dropbox stop'
