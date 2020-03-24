#!/usr/bin/env bash

DEFAULT_LIST_FILENAME="~/.brewlist"
CASK_LIST_FILENAME="~/.brewcasklist"

brew list > DEFAULT_LIST_FILENAME && \
	brew cask list > CASK_LIST_FILENAME

echo -e "\x1B[36mbrew list: \x1B[0m";
cat DEFAULT_LIST_FILENAME;
echo "";

echo -e "\x1B[36mbrew cask list: \x1B[0m";
cat CASK_LIST_FILENAME;
