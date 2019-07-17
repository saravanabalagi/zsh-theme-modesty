prompt_unraveler_precmd() {
  PROMPT='%{$fg[magenta]%}%c %{$fg[blue]%}→ %{$reset_color%}'
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

ZSH_THEME_CONDAENV_PROMPT_PREFIX=" "
ZSH_THEME_CONDAENV_PROMPT_SUFFIX=""
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX=" "
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX=""
