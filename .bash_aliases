# ls
alias ll='ls -l -h'
alias la='ls -l -a -h'

# alias-related
alias myalias='cat ~/.bash_aliases'
alias addalias='vim ~/.bash_aliases'
alias sc='source ~/.bashrc'

# cd
alias ..='cd ..'
alias ...="cd ../.."
alias ~='cd ~'
alias dev='cd ~/dev/'

# command
alias jn='jupyter-notebook'
alias jnb='cd ~; jupyter notebook &'
alias tbb='tensorboard --logdir=~/dev/tfani/logs/ --port 6491 &'

alias tf='source activate tf-nightly'

# watch
alias wnvidia='watch --color -n 1 -d nvidia-smi '
alias wls='watch --color -n 1 -d ls -l -a'
alias wlsh='watch --color -n 1 -d ls -l -a -h'
