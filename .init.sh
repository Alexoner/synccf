# source customized initailization script
if [ -f $HOME/.init.local.sh ]
then
	. $HOME/.init.local.sh
fi

# locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$PATH:$HOME/bin

################################### Tmux ############################################
export tmux_conf_new_window_retain_current_path=true

######################################## pyenv configuration #############################
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


################################### vim ###################################################
export EDITOR=nvim
alias vi="vim"
alias vim="nvim"
alias vimdiff="nvim -d"
