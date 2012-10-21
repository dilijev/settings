alias grep='grep --color=auto'
alias ls='ls --color=always --group-directories-first'
alias ll='ls -lA'
alias lx='ls -lX'

alias pride='ssh dilijev@pride.cs.utexas.edu'
alias liukang='ssh dilijev@liukang.ece.utexas.edu'

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

alias demi='cd ~/Dropbox/demi/'

if [ -f ~/dropbox ]; then
	alias dropbox='~/dropbox' #program
fi
alias dbstart='dropbox start'
alias dbstop='dropbox stop'

alias down='cd ~/Downloads/'
alias desk='cd ~/Desktop/'
alias docs='cd ~/Documents/'
alias drop='cd ~/Dropbox/'

###
### class folder shortcuts
###

#
# 11s
#

alias 105='cd ~/Dropbox/classes/11s/cs105/'
alias 336='cd ~/Dropbox/classes/11s/cs336/'
alias 360='cd ~/Dropbox/classes/11s/ee360c/'
alias 360c='360'
alias algs='360'
alias 313='cd ~/Dropbox/classes/11s/ee313/'
alias mus='cd ~/Dropbox/classes/11s/mus606a/'
alias ugs='cd ~/Dropbox/classes/11s/ugs302/'

alias prog1='cd ~/Dropbox/classes/11s/ee360c/prog/1'
alias prog2='cd ~/Dropbox/classes/11s/ee360c/prog/2'

#
# 11f
#

alias 445='cd ~/Dropbox/classes/11f/ee445l/'
alias 337='cd ~/Dropbox/classes/11f/cs337/'
alias 351='cd ~/Dropbox/classes/11f/ee351k/'

alias 337p1='cd ~/Dropbox/classes/11f/cs337/projects/1'
alias 337p2='cd ~/Dropbox/classes/11f/cs337/projects/2'
alias 337p3='cd ~/Dropbox/classes/11f/cs337/projects/3'

alias 445l3='cd ~/Dropbox/classes/11f/ee445l/labs/03'
alias 445l4='cd ~/Dropbox/classes/11f/ee445l/labs/04'

#
# 12s
#

alias 439='cd ~/Dropbox/classes/12s/cs439/'
alias 346='cd ~/Dropbox/classes/12s/cs346/'

alias 439-3='cd ~/Dropbox/classes/12s/cs439/labs/3/'
alias 439-5='cd ~/Dropbox/classes/12s/cs439/labs/5/'
alias 439-6='cd ~/Dropbox/classes/12s/cs439/labs/6/'

#
# 12f
#

SEM12F=~/Dropbox/classes/12f
GRAPHICS=$SEM12F"/cs354-graphics"
OOP=$SEM12F"/cs371p-oop"
DESIGN=$SEM12F"/ee364d-design"
ARCH=$SEM12F"/ee460n-arch"
ORCH=$SEM12F"/ens107s-orch"
DANCE=$SEM12F"/ped103l-dance"

alias 12f='cd $SEM12F'

alias graphics='cd $GRAPHICS'
alias graph='graphics'
alias 354='graphics'

alias oop='cd $OOP'
alias 371='oop'
alias 371p='oop'

alias design='cd $DESIGN'
alias arch='cd $ARCH'
alias orch='cd $ORCH'
alias dance='cd $DANCE'

alias graph1='graphics; cd projects/cs354-1'
alias graph2='graphics; cd projects/cs354-2'
alias graph3='graphics; cd projects/cs354-3'
alias graph4='graphics; cd projects/cs354-4'
alias graph5='graphics; cd projects/cs354-5'
alias graph6='graphics; cd projects/cs354-6'

alias oop1='oop; cd projects/cs371p-collatz'
alias oop1t='oop; cd projects/cs371p-collatz-tests'
alias oop2='oop; cd projects/cs371p-voting'
alias oop2t='oop; cd projects/cs371p-voting-tests'
alias oop3='oop; cd projects/cs371p-allocator'
alias oop3t='oop; cd projects/cs371p-allocator-tests'
alias oop4='oop; cd projects/cs371p-matlab'
alias oop4t='oop; cd projects/cs371p-matlab-tests'

alias arch1='arch; cd labs/ee460n-lab1'
alias arch2='arch; cd labs/ee460n-lab2'
alias arch3='arch; cd labs/ee460n-lab3'

