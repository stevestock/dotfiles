# Add personal binaries to PATH
export PATH="$HOME/bin:${PATH}"

# Color LS output, per: $man ls
# https://stackoverflow.com/q/1550288
export CLICOLOR=1

# homebrew rbenv caveat, per: $brew info rbenv
eval "$(rbenv init -)"

# Color, per-character, inline diff
# https://stackoverflow.com/a/25634420/884677
alias gitd="git diff --color-words='[^[:space:]]|([[:alnum:]]|UTF_8_GUARD)+'"

# lldb doesn't get along with brew python
alias lldb='PATH="/usr/bin:$PATH" lldb'
