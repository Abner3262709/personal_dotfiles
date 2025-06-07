HISTFILE=~/.bash/bash_history.sh # setting file path      #
HISTSIZE=10000                   # setting the            #
HISTFILESIZE=2000                # file size              # history
HISTCONTROL=ignoreboth  	 # ignore duplicate lines #
shopt -s histappend    	         # append to history      #

shopt -s checkwinsize # update the values of lines and columns

if [ -f ~/.bash/bash_aliases.sh ]; then #
    . ~/.bash/bash_aliases.sh           # aliases
fi                                      #

if [ -f ~/.bash/prompt.sh ]; then #
    . ~/.bash/prompt.sh           # prompt
fi                                #

if [ -f ~/.bash/catppuccin_mocha.sh ]; then #
    . ~/.bash/catppuccin_mocha.sh           # color scheme
fi					    #



if [ -f /usr/share/bash_completion/bash_completion ]; then # enable
    . /usr/share/bash_completion/bash_completion           # completion
fi                                                         # features

if [ -x /usr/bin/dircolors ]; then                                                         # enable
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"  # color
fi											   # support

     										       # enable GCC
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01' # warnings
										       # and
set -o vi # set vim keybinds
