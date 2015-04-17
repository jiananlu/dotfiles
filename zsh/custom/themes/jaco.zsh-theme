PROMPT='$(_user_host)[${_current_datetime}] ${_current_dir}
$ '

RPROMPT='%{$(echotc UP 1)%}$(_git_info) $(git_prompt_status) ${_return_status}%{$(echotc DO 1)%}%{$reset_color%}'

local _current_dir="%{$fg[green]%}%d%{$reset_color%}"
local _current_datetime="%{$fg[white]%}%D{%Y-%m-%d} %*%{$reset_color%}"
local _return_status="%{$fg[red]%}%(?..!)%{$reset_color%}"

function _user_host() {
    if [[ -n $SSH_CONNECTION ]]; then
        me="%n@%m"
    fi
    if [[ -n $me ]]; then
        echo "%{$fg[yellow]%}$me%{$reset_color%} "
    fi
}

function _git_info() {
    if git rev-parse --git-dir >/dev/null 2>&1; then
        if [[ $(git log 1>/dev/null 2>&1 | grep -c "^fatal: bad default revision") == 0 ]]; then
            if [[ $(git status --porcelain 2>/dev/null) == "" ]]; then
                echo "%{$fg[green]%}$(git_prompt_info)"
                return
            fi

            last_commit=$(git log --pretty=format:'%at' -1 2>/dev/null)
            now=$(date +%s)
            secs=$((now-last_commit))
            mins=$((secs/60))
            hrs=$((secs/3600))
            days=$((secs/86400))

            msg=""
            if [ $days -gt 0 ]; then
                msg="${days}d "
            fi
            if [ $hrs -gt 0 ]; then
                mod_hrs=$((hrs%24))
                msg="${msg}${mod_hrs}h "
            fi
            if [ $mins -gt 0 ]; then
                mod_mins=$((mins%60))
                msg="${msg}${mod_mins}m"
            fi

            if [ $secs -gt 86400 ]; then
                echo "%{$fg[red]%}$(git_prompt_info) ($msg)"
            elif [ $secs -gt 3600 ]; then
                echo "%{$fg[yellow]%}$(git_prompt_info) ($msg)"
            else
                echo "%{$fg[cyan]%}$(git_prompt_info) ($msg)"
            fi
        fi
    fi
}

# git prompt related settings:
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
ZSH_THEME_GIT_PROMPT_ADDED="A "
ZSH_THEME_GIT_PROMPT_MODIFIED="E "
ZSH_THEME_GIT_PROMPT_DELETED="D "
ZSH_THEME_GIT_PROMPT_RENAMED="R "
ZSH_THEME_GIT_PROMPT_UNMERGED="M "
ZSH_THEME_GIT_PROMPT_UNTRACKED="U "
