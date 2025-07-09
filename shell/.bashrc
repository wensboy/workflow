#!/usr/bin/env bash

# bash prompt
parse_git_branch(){
    git rev-parse --is-inside-work-tree &>/dev/null || return
    git symbolic-ref --short HEAD 2>/dev/null || git describe --tags --exact-match 2>/dev/null
}

update_ps(){
	local last=$?
	symbol='⇒'
	if [[ "${last}" -ne 0 ]]; then
		symbol='✘'
		PS1='\[\e[36m\][\u@\h]\[\e[0m\](\[\e[33m\]\w\[\e[0m\]$(git_branch=$(parse_git_branch); [[ -n ${git_branch} ]] && echo "\[\e[32m\]:\[\e[0m\]\[\e[35m\]${git_branch}\[\e[0m\]"))\[\e[31m\]${symbol}\[\e[0m\] '
	else
		PS1='\[\e[36m\][\u@\h]\[\e[0m\](\[\e[33m\]\w\[\e[0m\]$(git_branch=$(parse_git_branch); [[ -n ${git_branch} ]] && echo "\[\e[32m\]:\[\e[0m\]\[\e[35m\]${git_branch}\[\e[0m\]"))\[\e[32m\]${symbol}\[\e[0m\] '
	fi
}

# Alias habbit
alias cls='clear'
alias so='source'
alias ll='ls -al'

# environment varible
export PROMPT_COMMAND=update_ps
