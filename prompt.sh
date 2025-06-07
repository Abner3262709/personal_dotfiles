battery_status() {
    if command -v acpi &>/dev/null; then
        acpi -b | grep -oP "[0-9]+%" || echo "N/A"
    else
        echo "N/A"
    fi
}




parse_git_branch() {
    git branch 2>/dev/null | sed -n '/\* /s///p'
}

git_prompt() {
    local branch="$(parse_git_branch)"
    [ -n "$branch" ] && echo "($branch)"
}



#git_prompt() {
#    local git_where="$(parse_git_branch)"
#    [ -n "$git_where" ] && echo "on"
#}

PS1=' '
PS1+='\[\e[32m\]$(battery_status)' # the battery status
PS1+='\[\e[0m\] | '	           # separator |
PS1+='\[\e[31m\]\A'                # hora
PS1+='\[\e[0m\] | '	           # separator |
PS1+='\[\e[34m\]\w'                # directory
PS1+='\[\e[33m\]$(git_prompt)'	   # git branch
PS1+='\[\e[0m\] > '	           # the console
