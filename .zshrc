# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

if [[ -e /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
	export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=9'
else
	echo "zsh-autosuggestions not found"
fi

# User configuration
export PATH="$PATH:$HOME/.rvm/bin:$(ruby -e "print Gem.user_dir")/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='mvim'
fi

eval "$(rbenv init -)"

sdo() sudo zsh -c "$functions[$1]" "$@"

# Aliases
alias pping="$HOME/.scripts_helper/prettyping.sh"
alias top=htop
alias connecthome="sudo -s $HOME/.scripts_helper/wireless_connector unvapoteur wlp4s0"
alias connectme="sudo -s $HOME/.scripts_helper/wireless_connector"
alias dmesg="dmesg -HT"
