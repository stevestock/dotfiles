# Best Practice:
# - zprofile for PATH and EDITOR env variables
# - zshrc for aliases, custom prompt, or other terminal appearance and behavior
# from: https://mac.install.guide/terminal/zshrc-zprofile

# chruby
if [ "$(arch)" = "arm64" ]; then
  source "$(brew --prefix)/opt/chruby/share/chruby/chruby.sh"
  chruby ruby-3.2.2
fi

# gcloud
if [ "$(arch)" = "arm64" ]; then
  source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
  source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
fi

#ssl certs python 3.6+
#https://stackoverflow.com/a/57795811
#CERT_PATH=$(python -m certifi)
#export SSL_CERT_FILE=${CERT_PATH}
#export REQUESTS_CA_BUNDLE=${CERT_PATH}

# rosetta switching
# https://developer.apple.com/forums/thread/718666
# https://stackoverflow.com/a/74531940
alias arm="env /usr/bin/arch -arm64 /bin/zsh --login"
alias intel="env /usr/bin/arch -x86_64 /bin/zsh --login"
if [ "i386" = $(arch) ]; then
  export PS1="%F{131}%n@%m %1~ %#"
fi

# Color LS output
export CLICOLOR=1
