function _virtualenv_prompt_info {
    if [[ -n "$(whence virtualenv_prompt_info)" ]]; then
        if [ -n "$(whence pyenv_prompt_info)" ]; then
            if [ "$1" = "inline" ]; then
                ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX=%{$fg[blue]%}"::%{$fg[red]%}"
                ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX=""
                virtualenv_prompt_info
            fi
            local _default_version="$(cat $PYENV_ROOT/version 2> /dev/null)"
            [ "$(pyenv_prompt_info)" = "${_default_version}" ] && virtualenv_prompt_info
        else
            virtualenv_prompt_info
        fi
    fi
}

function _pyenv_prompt_info {
    if [ -n "$(whence pyenv_prompt_info)" ]; then
        local _prompt_info="$(pyenv_prompt_info)"
        local _default_version="$(cat $PYENV_ROOT/version 2> /dev/null)"
        if [ -n "$_prompt_info" ] && [ "$_prompt_info" != "${_default_version:-system}" ]; then
            echo "${ZSH_THEME_PYENV_PROMPT_PREFIX}$(pyenv_prompt_info)$(_virtualenv_prompt_info inline)${ZSH_THEME_PYENV_PROMPT_SUFFIX}"
        fi
    fi
}

function _docker_prompt_info {
    DOCKER_PROMPT_INFO="${DOCKER_PROMPT_INFO:-${DOCKER_MACHINE_NAME}}"
    DOCKER_PROMPT_INFO="${DOCKER_PROMPT_INFO:-${DOCKER_HOST/tcp:\/\//}}"
    if [ -n "${DOCKER_PROMPT_INFO}" ]; then
        echo "${ZSH_THEME_DOCKER_PROMPT_PREFIX}${DOCKER_PROMPT_INFO}${ZSH_THEME_DOCKER_PROMPT_SUFFIX}"
    fi
}

prompt_setup_acastellano(){
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN=""
  ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$reset_color%}%{^[[03m%}%{$fg[blue]%}"
  ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="!%{$reset_color%} "


  base_prompt='%{$fg_bold[blue]%}$(_virtualenv_prompt_info)$(_pyenv_prompt_info)$(_docker_prompt_info)%{$fg[red]%}%n%{$reset_color%}%{$fg[blue]%}@%{$reset_color%}%{$fg[yellow]%}%m%{$reset_color%}%{$fg[green]%}:%{$reset_color%}%{$fg[cyan]%}%0~%{$reset_color%}%{$fg[green]%}|%{$reset_color%}'
  post_prompt='%{$fg[reed]%}⇒%{$reset_color%}  '

  base_prompt_nocolor=$(echo "$base_prompt" | perl -pe "s/%\{[^}]+\}//g")
  post_prompt_nocolor=$(echo "$post_prompt" | perl -pe "s/%\{[^}]+\}//g")

  precmd_functions+=(prompt_pygmalion_precmd)
}

prompt_pygmalion_precmd(){
  local gitinfo=$(git_prompt_info)
  local gitinfo_nocolor=$(echo "$gitinfo" | perl -pe "s/%\{[^}]+\}//g")
  local exp_nocolor="$(print -P \"$base_prompt_nocolor$gitinfo_nocolor$post_prompt_nocolor\")"
  local prompt_length=${#exp_nocolor}

  local nl=""

  if [[ $prompt_length -gt 40 ]]; then
    nl=$'\n%{\r%}';
  fi
  PROMPT="$base_prompt$gitinfo$nl$post_prompt"
}

prompt_setup_acastellano
