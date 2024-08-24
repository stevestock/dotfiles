# Best Practice:
# - zprofile for PATH and EDITOR env variables
# - zshrc for aliases, custom prompt, or other terminal appearance and behavior
# from: https://mac.install.guide/terminal/zshrc-zprofile

typeset -TUx PATH path

#reset path if changed env
if [ -z "${BASE_PATH}" ]; then
  export BASE_PATH=$PATH
else
  export PATH=$BASE_PATH
fi

# Multiple Homebrews on Apple Silicon
#https://stackoverflow.com/a/68443301
if [ "$(arch)" = "arm64" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PYENV_ROOT="$HOME/.pyenv"
  export PYTHONUSERBASE="$HOME/.local"
else
  eval "$(/usr/local/bin/brew shellenv)"
  export PYENV_ROOT="$HOME/.pyenv-x86"
  export PYTHONUSERBASE="$HOME/.local-x86"
fi

# pyenv
# https://github.com/pyenv/pyenv?tab=readme-ov-file#set-up-your-shell-environment-for-pyenv
[[ -d "$PYENV_ROOT/bin" ]] && path+=("$PYENV_ROOT/bin")
eval "$(pyenv init -)"

#pipenv
# https://pipenv.pypa.io/en/latest/installation.html#preferred-installation-of-pipenv
command -v python >/dev/null && path+=("$(python -m site --user-base)/bin")

#tj/n & mklement0/n-install
export N_PREFIX="$HOME/.n" # defaults to ~/n
if [[ -d "$N_PREFIX/bin" ]] && command -v python >/dev/null; then
  path+=("$N_PREFIX/bin")
fi
