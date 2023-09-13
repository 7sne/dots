set fish_greeting 			""

set -g fish_prompt_pwd_dir_length 	1
set -g theme_display_user 		yes
set -g theme_hide_hostname 		no
set -g theme_hostname			always

alias ls  				"exa -l -F -a --icons"
alias l					"ls"
alias c					"clear"

alias nv				"nvim"
alias g					"git"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Python paths.
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Ruby paths.
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
export PATH="/Users/7sne1/.gem/ruby/2.6.0/bin:$PATH"

set -x PATH /Applications/code.app/Contents/Resources/app/bin $PATH


alias config='/usr/bin/git --git-dir=/Users/7sne1/.cfg/ --work-tree=/Users/7sne1'
