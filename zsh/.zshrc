# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="jnrowe"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
export PATH=/Users/eleventh/bin:$PATH
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, colorize, cp, colored-man-pages)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#source /usr/share/zsh/site-contrib/powerline.zsh
alias hw='cd ~/Dropbox/schoolwork'
alias grub-mk='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias gmail='cd ~/Downloads/ && mutt -F ~/.mutt/gmailrc'
alias outlook='cd ~/Downloads/ && mutt -F ~/.mutt/outlookrc'
alias getmusic='youtube-dl --add-metadata -x --audio-format mp3 -o "%(title)s-%(artist)s.%(ext)s"'
alias download='youtube-dl --add-metadata -o "%(title)s.%(ext)s"'
alias callhome='ssh -p 8008 phonehome.webhop.me'
alias cmail='ssh mailbox -t "mutt"'
alias chat='ssh dropbox'
alias emacs='emacs -nw'
bindkey -v
export TERM=screen-256color
alias g='googler -n 3'
alias thinkcentre='sshfs -p 8008 phonehome.webhop.me:/home/eleventh/ ~/remote/thinkcentre'
fpath=(/usr/local/share/zsh-completions $fpath)
weather(){ curl -s "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml?query=${@:-40121}"|perl -ne '/<title>([^<]+)/&&printf "%s: ",$1;/<fcttext>([^<]+)/&&print $1,"\n"';}
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#Todo.txt shit
PATH=$PATH:"/usr/local/Cellar/todo-txt/2.10/bin/"
alias t='todo.sh -d ~/Dropbox/todo/todo.cfg'
alias ta='todo.sh -d ~/Dropbox/todo/todo.cfg add'
alias td='todo.sh -d ~/Dropbox/todo/todo.cfg do'
alias te='vim ~/Dropbox/todo/todo.txt'
export TODOTXT_DEFAULT_ACTION=list

#Calendar shit
alias g='gcalcli'
alias gw='gcalcli calw 1'
alias ga='gcalcli add --calendar 'gocyclic249@gmail.com''
alias gq='gcalcli quick --calendar 'gocyclic249@gmail.com''

alias tg='gw && t'
