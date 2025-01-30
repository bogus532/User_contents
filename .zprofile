#echo ".zprofile"
#echo "$PATH"
 
alias vi="vim"

export CPPFLAGS="-I/opt/local/include"
export LDFLAGS="-L/opt/local/lib"

export PATH=/Users/bogus532/Library/Android/sdk/platform-tools:${PATH}
export PATH=/usr/local/bin:$PATH

export PATH="/usr/local/sbin:$PATH"
#eval "$(rbenv init -)"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-20.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

export PATH="/opt/local/libexec/gnubin/:/opt/local/bin:/opt/local/sbin:$PATH"

#export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
