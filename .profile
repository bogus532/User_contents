#!/bin/bash

# 현재 쉘이 bash인지 확인
if [ -z "$BASH_VERSION" ]; then
    echo "잘못된 shell입니다. 이 스크립트는 Bash에서만 실행 가능합니다."
    exit 1
else
    #echo "이 스크립트는 Bash에서 실행되고 있습니다."
    echo ""
fi

#TERM="xterm-256color"
#TERM="xterm-direct"
#export COLORTERM=truecolor
export CLICOLOR=1
export LSCOLORS=exFxCxDxBxegedabagacad

export PS1="[\[\e[36;1m\]\u@\[\e[32;1m\]\h\[\e[m\]]:\[\e[31;1m\]\w:> \[\e[0m\]"

ZSH_THEME="random"

alias ls="ls -v --color=auto"
alias la="ls -alvh --color=auto"
alias py="python"
#alias pip="pip3"
alias cls="clear"
alias kd="killall Dock"
alias hgrep='iconv -c -f UTF-8-MAC -t UTF-8 | grep '

export PATH=/Users/bogus532/Library/Android/sdk/platform-tools:${PATH}
export PATH=/usr/local/bin:$PATH

export LANG='ko_KR.UTF-8'
export LC_ALL='ko_KR.UTF-8'
export LC_CTYPE='ko_KR.UTF-8'

#if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
#          . /opt/local/etc/profile.d/bash_completion.sh
#fi

# your PATH, run:
export CPPFLAGS="-I/opt/local/include"
export LDFLAGS="-L/opt/local/lib"


export PATH="/usr/local/sbin:$PATH"
#eval "$(rbenv init -)"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-20.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

##
# Your previous /Users/bogus532/.profile file was backed up as /Users/bogus532/.profile.macports-saved_2025-01-09_at_23:28:11
##
# MacPorts Installer addition on 2025-01-09_at_23:28:11: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/libexec/gnubin/:/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#if [[ $SHELL == *"zsh"* ]]; then
#    exit 0
#fi
#export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

if [ -f /opt/local/etc/profile.d/autojump.sh ]; then
        . /opt/local/etc/profile.d/autojump.sh
fi

if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
    #echo "Using macOS Terminal"
    # macOS Terminal에서 실행할 설정
	export TERM="xterm-256color"
elif [ "$TERM_PROGRAM" = "iTerm.app" ]; then
    #echo "Using iTerm2"
    # iTerm2에서 실행할 설정
    export COLORTERM=truecolor
    export BAT_THEME="tokyonight_night"
    #alias bat = "bat --pager "less -RF""
else
    # echo "Using an unsupported terminal: $TERM_PROGRAM"
    # 기타 터미널에서 실행할 설정
    export COLORTERM=truecolor
    export BAT_THEME="tokyonight_night"
fi
