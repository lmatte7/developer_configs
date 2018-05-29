#!/bin/zsh
# Author: Lucas Matte <lmatte7@gmail.com>
#
# Script to change the command line version of PHP
# Useful if working on older and newer projects while using
# the built in PHP server
# Should be used with homebrew versions of PHP on Mac OSX
# with zsh. This script should be set up to run through
# an alias in .zshrc so it impacts the current sessions
#############################################################



# Has the user submitted a version
if [[ -z "$1" ]]
then
	echo "version required"
	exit
fi


# Variable to hold the new PHP version
php_ver="php$1"

# Create the export statement for the new PHP version
new_php_ver="export PATH=\"\$(brew --prefix homebrew/php/$php_ver\)/bin:\$PATH\""

# Replace the old export line in our .zshrc  
sed -i.bak "s;export PATH=\"\\\$(brew --prefix homebrew/php/php[0-9][0-9])/bin:\\\$PATH\";$new_php_ver;g" ~/.zshrc

# Reload the new .zshrc
source ~/.zshrc
