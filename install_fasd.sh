mkdir ~/bin
cd ~/bin
if [[ ! -d fasd-repo ]]; then git clone https://github.com/clvv/fasd fasd-repo; fi
cd fasd-repo
PREFIX=$HOME make install
source ~/.bashrc
