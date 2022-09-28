export PYENV_ROOT=$HOME/.pyenv
export WORKSPACE=/workspace
export PATH=$PYENV_ROOT/bin:$HOME/.local/bin:$HOME/bin:/usr/local/bin:/usr/sbin
export PATH=$PATH:/usr/bin:/sbin:/bin:$HOME/.poetry/bin:/workspace/scripts
export PATH=$PATH:$HOME/.pyenv/versions/sam-cli/bin:$HOME/.cargo/bin:.

eval "$(pyenv init --path)"
