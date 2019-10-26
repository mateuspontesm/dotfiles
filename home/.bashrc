#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mateuspontesm/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mateuspontesm/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mateuspontesm/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mateuspontesm/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

alias ls='ls --color=auto'
if [ "`id -u`" -eq 0 ]; then
    PS1="\[\e[1;33m\]<\$(basename \$CONDA_DEFAULT_ENV)> \[\e[1;31m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\W]> \[\e[0m\]"
else
    PS1="\[\e[1;33m\]<\$(basename \$CONDA_DEFAULT_ENV)> \[\e[1;34m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\W]> \[\e[0m\]"
fi
# <<< conda initialize <<<
