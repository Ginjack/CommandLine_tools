#!/bin/sh

opt="keyward"
red="$(tput setaf 1)"
green="$(tput setaf 2)"
yellow="$(tput setaf 3)"
blue="$(tput setaf 4)"
NC="$(tput sgr0)" # No Color
BOLD="$(tput bold)"

version=$1

if [ $# == 1 ];
then
	open -n /Applications/Unity${version}/Unity${version}.app/
	echo ""
	echo "Unity ${BOLD}ver ${version}${NC} を開きます.${NC}"
	echo ""
else
	echo ""
	echo "Which version?"
	echo ""
fi
