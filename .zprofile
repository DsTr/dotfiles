#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Editors
#
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
export GOPATH=$HOME/.go
export GOBIN=$GOPATH/bin
path=(
  $HOME/.local/bin
  /local/utils/
  /usr/local/{bin,sbin}
  $GOPATH/bin
  /usr/local/bin/
  $HOME/.dotfiles/bin
  '/Users/tani/Library/Application Support/Coursier/bin'
  $path
)
if [ $is_macos ]; then
    path=(
      /usr/local/lib/ruby/gems/2.6.0/bin/
      /usr/local/opt/php@7.2/bin
      /usr/local/opt/node@8/bin
      #/usr/local/Cellar/python@2/2.7.15_1/bin/
      /usr/local/Cellar/python/3.7.0/bin/
      $path
    )
fi
#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi



# ELAMA
#

BIDMANAGER_DB_URL="jdbc:postgresql://localhost:5432/bidmanager?connectTimeout=30&loginTimeout=30&socketTimeout=30"
BIDMANAGER_DB_USER=postgres
BIDMANAGER_DB_PASSWORD=123

export PATH="$HOME/.cargo/bin:$PATH"

# Created by `userpath` on 2020-11-17 17:27:49
export PATH="$PATH:/Users/tani/.gyg/bin"

# Created by `userpath` on 2020-11-17 17:27:51
export PATH="$PATH:/Users/tani/Library/Python/3.9/bin"

# Created by `userpath` on 2020-12-13 21:21:04
export PATH="$PATH:/Users/tani/Library/Python/3.7/bin"
