export ZSH=/Users/sebastianekstrom/.oh-my-zsh
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

plugins=(
  git zsh-autosuggestions thefuck
)

source $ZSH/oh-my-zsh.sh

source ~/.aliases

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
