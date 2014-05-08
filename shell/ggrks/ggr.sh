#!/bin/sh

opt="keyward"
red="$(tput setaf 1)"
green="$(tput setaf 2)"
yellow="$(tput setaf 3)"
blue="$(tput setaf 4)"
NC="$(tput sgr0)" # No Color
BOLD="$(tput bold)"

if [ $# != 0 ];
then
	for i in $*; do
		#検索ワードを+で連結
		str="$str${str:++}$i"
	done
	opt='search?'
	opt="${opt}q=${str}"
	open -a Safari http://www.google.co.jp/$opt
	str=""
	str=$str${blue}G
	str=$str${red}o
	str=$str${yellow}o
	str=$str${blue}g
	str=$str${green}l
	str=$str${red}e
	echo ""
	echo "$str${NC} で \"${BOLD}$*${NC}\" を検索します…${NC}"
	echo ""
else
	echo ""
	echo "missing keyward."
	echo ""
fi