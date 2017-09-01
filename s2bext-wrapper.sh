#!/bin/bash
# =====================================================
pr=$1
cmd=$2
seq=$3


shopt -s expand_aliases
source ~/.bashrc
source ~aaronhan/.s2bext/common


if [[ -n $pr ]]; then 
	if valid_pr_number $pr; then
		mkdir -p ~/$pr
		cd ~/$pr
	else
		echo "Invalid PR Number"
	fi
fi

s2bext $cmd

echo ""
echo "''''''"
echo "SEQ $seq"
