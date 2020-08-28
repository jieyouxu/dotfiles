#!/usr/bin/env bash

DEFAULT_LIST_FILENAME="$HOME/.brewlist"
CASK_LIST_FILENAME="$HOME/.brewcasklist"

if ! command -v brew &> /dev/null
then
	cat <<- END
	ERROR: program \`brew\` could not be found, please make sure you've
	installed it and \`brew`\ exists in your \`$PATH\`
	END
	exit
fi

brew list > $DEFAULT_LIST_FILENAME
brew cask list > $CASK_LIST_FILENAME

echo -e "\x1B[36mbrew list: \x1B[0m";
cat $DEFAULT_LIST_FILENAME;
echo "";

echo -e "\x1B[36mbrew cask list: \x1B[0m";
cat $CASK_LIST_FILENAME;
