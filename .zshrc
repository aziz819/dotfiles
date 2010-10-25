autoload -U compinit
compinit

export LANG=ja_JP.UTF-8
export PATH=~/work/bin:/opt/local/bin:/opt/local/sbin/:~/work/bin/sbt:~/work/android-sdk-mac_86/tools:~/work/android-sdk-mac_x86/tools:$PATH
export MANPATH=/opt/local/man:$MANPATH
export SCALA_HOME=/opt/local/share/scala
export ANDROID_SDK_ROOT=~/work/android-sdk-mac_86
export ANDROID_SDK_HOME=$ANDROID_SDK_ROOT
export ANDROID_HOME=$ANDROID_SDK_HOME

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt hist_ignore_all_dups
setopt hist_ignore_dups     # ignore duplication command history list
setopt hist_save_nodups
setopt share_history        # share command history data
# setopt correct
setopt append_history
setopt inc_append_history
setopt hist_no_store
setopt hist_reduce_blanks
setopt no_beep

autoload colors
colors
PROMPT="%{${fg[blue]}%}[%n@%m] %(!.#.$) %{${reset_color}%}"
PROMPT2="%{${fg[blue]}%}%_> %{${reset_color}%}"
SPROMPT="%{${fg[red]}%}correct: %R -> %r [nyae]? %{${reset_color}%}"
RPROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"

# alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias ls="ls -G"
alias la="ls -laGF"
alias emacs="open -a Emacs"

set_rprompt() {
    local user_color
    if [ `whoami` = root ]; then
        user_color=red
    elif [ `hostname` = otto.local ]; then
        user_color=blue
    elif [ `hostname` = liesa.local ]; then
        user_color=magenta
    elif [ `hostname` = walter.local ]; then
        user_color=green
    elif [ `hostname` = pamela.local ]; then
        user_color=magenta
    fi
    RPROMPT="%{${fg[$user_color]}%}[%~]%{${reset_color}%}"
}

set_rprompt

