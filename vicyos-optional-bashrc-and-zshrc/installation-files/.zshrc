#   https://github.com/ohmyzsh/ohmyzsh
#   https://github.com/zsh-users/antigen
#   sudo apt install zsh-syntax-highlighting
#   https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
#   https://github.com/ohmyzsh/ohmyzsh

##########################################
# VICYOS PERSONAL PLUGINGS:

source ~/.vicyos-zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.vicyos-zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


##########################################


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/vicyos/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="xiong-chiamiov"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
plugins=(git zsh-autosuggestion)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"




#################################################################
################### VICYOS-PERSONAL-ALIAS  ######################
#################################################################






#youtube-dl

######## I modded it a little bit to suit my needs ^.^/)  #######

alias ytmp4='youtube-dl --recode-video mp4' # Download YT video and format it to MP4 
alias ytlist='youtube-dl -xcit' # Download a YT playlist
alias mp3list='youtube-dl -xcit --audio-format mp3' # Download a YT playslist and format it to MP3
alias mp4list='youtube-dl -cit --recode-video mp4' # - Download a YT playslist and format it to MP4
alias ytmp3="youtube-dl --extract-audio --audio-format mp3 " # Download a YT video and format it to MP3
alias yt='youtube-dl' # Download a YT video without formating it


alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "

alias ytv-best="youtube-dl -f bestvideo+bestaudio "

##########  Brazillian Portuguese alias  ########## 

alias kernel="cat /proc/version"
alias sudo-o-reiniciar-o-computador="sudo reboot"
alias atualizar-o-sistema='sudo pacman -Syu'
alias reiniciar-o-computador="reboot"
alias sudo-desligar-o-computador="sudo shutdown now"
alias desligar-o-computador="shutdown now"



############# Vicyos Personal ################

alias update='sudo apt-get update && sudo apt-get upgrade'
alias revo='sudo apt autoremove'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias revo='sudo apt autoremove'
alias reboot='sudo systemctl reboot -i'

alias install='sudo apt install'
alias remove='sudo apt remove'
alias unlock='sudo rm /var/lib/dpkg/lock-frontend && sudo rm /var/lib/dpkg/lock'

export PATH="$PATH:/home/vicyos/flutter/bin"

############ CCACHE to compile android custom roms! ############

#export USE_CCACHE=1
#export CCACHE_DIR="${HOME}/.ccache"
#export CCACHE_EXEC="$(which ccache)"
#ccache -M 150G



clear && neofetch
