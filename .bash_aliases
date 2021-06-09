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

# watch
alias wnvidia='watch --color -n 1 -d nvidia-smi '
alias wls='watch --color -n 1 -d ls -l -a'
alias wlsh='watch --color -n 1 -d ls -l -a -h'

# switch cuda visible device
alias cu111='conda activate cu111; loadcuda 11.1'
alias cu113='conda activate cu113; loadcuda 11.3'
alias cu1='export CUDA_VISIBLE_DEVICES=1; echo Switch to cuda 1: GTX 1080'
alias cu0='export CUDA_VISIBLE_DEVICES=0; echo Switch to cuda 0: RTX 3080'
alias cu='unset CUDA_VISIBLE_DEVICES'

# load cuda version, for example: `loadcuda 11.1`
loadcuda () {
  CUDAHOME=/usr/local/cuda-$1
  if [ -d "$CUDAHOME" ]; then
    # Control will enter here if $DIRECTORY exists.
    export CUDA_HOME=${CUDAHOME}
    export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${LD_LIBRARY_PATH}
    export PATH=${CUDA_HOME}/bin:$PATH
    echo Found cuda, CUDA_HOME set to be ${CUDA_HOME}
    echo ----------------------------------------
    nvcc -V
  else
    echo Cannot find cuda at $CUDAHOME
  fi
}
