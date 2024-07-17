# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path for setup for homebrew
local brew_path="/opt/homebrew/bin"
local brew_opt_path="/opt/homebrew/opt"
local nvm_path="$HOME/.nvm"

export PATH="${brew_path}:${PATH}"
export NVM_DIR="${nvm_path}"

[ -s "${brew_opt_path}/nvm/nvm.sh" ] && \. "${brew_opt_path}/nvm/nvm.sh"  # This loads nvm
[ -s "${brew_opt_path}/nvm/etc/bash_completion.d/nvm" ] && \. "${brew_opt_path}/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to custom scripts
export PATH="$PATH:$HOME/.dotfiles/.bin"

# Path to tumxifier
export PATH="$PATH:$HOME/.tmux/plugins/tmuxifier/bin"
eval "$(tmuxifier init -)"

# export PATH="$PATH:$HOME/.tmuxifier/bin"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# Themes to try: cobalt2, awesomepanda, 
ZSH_THEME="awesomepanda"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(zsh-autosuggestions zsh-syntax-highlighting macos 1password)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='nvim'
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# f

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Aliases
# alias ll='ls -lh'
# alias lsa='ls -a'
alias vi=nvim
alias cat=bat 
alias ls='exa --sort=type'
alias lsa='exa -a --sort=type'
alias ll='exa -l --sort=type'
alias lla='exa -a -l --sort=type'
alias so='source ~/.zshrc'
alias mamp='cd /Applications/MAMP/htdocs'

# Functions
# Create a new directory and enter it
function take() { mkdir -p $1 && cd $1; }

# Create a quick note
function note {
  echo "---------------" >> $HOME/Notebook/drafts.md
  echo "DATE: $(date)" >> $HOME/Notebook/drafts.md
  echo "$@" >> $HOME/Notebook/drafts.md
  echo "---------------" >> $HOME/Notebook/drafts.md
}

# Project Shortcuts
alias sp="cd ~ && cd \$(find ~/Projects/Laborsync ~/Projects/Demos ~/Projects/Side-Projects -mindepth 1 -maxdepth 1 -type d | fzf)"
alias lab="tmuxifier s lab"
alias tks="tmux kill-server"

# Config Shortcuts
alias zrc="vi ~/.zshrc"
alias virc="cd ~/.config/nvim && vi"
alias wezrc="vi ~/.config/wezterm/wezterm.lua"
alias omz="open ~/.oh-my-zsh"
alias trc="vi ~/.tmux.conf"
alias notes="glow ~/Notebook/"
alias ..="cd .."
alias ....="cd ../.."

# General Shortcuts
alias cl="clear"
alias td="turbo dev"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pnpm
export PNPM_HOME="/Users/joshuamichael/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
