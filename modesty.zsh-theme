prompt_unraveler_precmd() {
	local CURRENT_DIR="%{$fg_bold[magenta]%}%c %{$fg_bold[blue]%}→ %{$reset_color%}"

	PROMPT=''
	PROMPT+=$CURRENT_DIR

	local GIT="%{$fg_bold[magenta]%}$(git_prompt_info)%{$reset_color%} $(git_prompt_status)%{$reset_color%} "
	local PY_ENV="%{$fg_bold[blue]%}"
  if typeset -f condaenv_prompt_info > /dev/null; then
    PY_ENV+="$(condaenv_prompt_info)"
	fi
	if typeset -f virtualenv_prompt_info > /dev/null; then
    PY_ENV+="$(virtualenv_prompt_info)"
	fi
	PY_ENV+="%{$reset_color%}"
	
	RPROMPT=''
	RPROMPT+=$GIT
	RPROMPT+=$PY_ENV
}

setup_prompt() {
	precmd_functions+=(prompt_unraveler_precmd)
}

setup_prompt
RPROMPT='%{$fg[magenta]%}$(git_prompt_info)%{$reset_color%} $(git_prompt_status)%{$reset_color%} %{$fg[blue]%}$(condaenv_prompt_info)$(virtualenv_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"

ZSH_THEME_CONDAENV_PREFIX=" "
ZSH_THEME_CONDAENV_SUFFIX=""
ZSH_THEME_VIRTUALENV_PREFIX=" "
ZSH_THEME_VIRTUALENV_SUFFIX=""
