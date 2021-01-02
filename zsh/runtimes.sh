### Python bin folder ###
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

USER_BASE_PATH=$(python3 -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH/bin
### -------------------------- ###

### Android SDK ###
if [ -d "$HOME/Library/Android/sdk" ]; then
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/platform-tools
fi
### -------------------------- ###

### Flutter SDK ###
if [ -d "$HOME/dev-tools/flutter" ]; then
  export FLUTTER_HOME=$HOME/dev-tools/flutter
  export PATH=$PATH:$FLUTTER_HOME/bin
fi
### -------------------------- ###
