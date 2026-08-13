# Brew: https://brew.sh/ 

# mise brew compatible path settings
# https://mise.jdx.dev/bootstrap/packages/brew.html

if [ -d "/opt/homebrew/bin" ]; then
  export _BREW_PREFIX="/opt/homebrew"
  export PATH="/opt/homebrew/bin:$PATH"
elif [ -d "/home/linuxbrew/.linuxbrew/bin" ]; then
  export _BREW_PREFIX="/home/linuxbrew/.linuxbrew"
  export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
fi
