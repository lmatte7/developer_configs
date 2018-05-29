#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Lucas Matte <lmatte7@gmail.com>
#

export TERM="xterm-256color"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Alias for more detailed ls
alias l='ls -FlaGh'


# Shortcut functions to different directories
function sites {
	cd /Apache/sites/${1}
}


function vhosts {
	cd /Apache/vhosts
}

# Shortcut to call php CLI version switcher script, added here
# so it changes the current session version
function phpver {
	. ~/phpscli.zsh $1
}


ulimit -n 200000
ulimit -u 2048


source ~/.profile

# Add for tmuxinator auto complete
source ~/.bin/tmuxinator.zsh

# Add powerlevel 9k custom options
POWERLEVEL9K_VI_INSERT_MODE_STRING="\uf1db"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="\uf111"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=9
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_USER_ICON="\uf007"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user php_version vi_mode newline dir dir_writable newline vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time public_ip)
export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"
