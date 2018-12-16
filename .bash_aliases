export DISPLAY=:0
export devhome=$HOME/git/

alias dh="cd $devhome && pwd"

# Bashrc
alias reload="source ~/.bashrc"
alias bashrc="vi ~/.bash_aliases && reload"

# Notes
alias notes="vi ~/.notes"

# Find
alias ff="find . -iname "

# Git
alias gits="git status --short"
alias ggrep="git grep -i"

# I3
alias i3config="vi ~/.config/i3/config"
alias i3logout="i3-msg exit"

# Navigation
alias ll="ls -lrtp"
alias lart="ls -lart"
alias c="clear"
alias cll="c && ll"

# Programs
alias grep="grep --color"
alias go="gnome-open"
alias psg="ps -ef | grep"
alias term="gnome-terminal &"

# Scratch
alias scratch="cd ~/scratch && ~/.userscripts/CreateUniqueScratchCpp.bash"

# Todo
alias todo="vi ~/.todo"

# Andoird Dev
alias androiddev="~/DevEnvs/android-studio/bin/studio.sh"

# Vim
alias vimrc="vi ~/.vimrc"

# Vim Dev
function flist  { find ~/git/RTSTF -iname '*.cpp' -o -iname '*.cc' -o -iname '*.c' -o -iname '*.hpp' -o -iname '*.hh' -o -iname '*.h' ; }
function mlist  { find ~/git/RTSTF -iname 'makefile' ; }
function mktags { 'cd ~/git/ && flist > cscope.files && ctags -L cscope.files && cscope -bqv' ; }
alias vv='(mktags && cd ~/git/ &&  vim)'

# Volume
alias vol="amixer set Master $1"

# Wifi
alias listwifi="nmcli -f ssid,signal device wifi list | tr -s \" \""
alias wifissidpass="nmcli device wifi connect $1 password $2"
alias wifissidnopass="nmcli device wifi connect $1"
alias wifiautonopass="~/.userscripts/NoPassWifiFetch.bash"
alias wifiautopass="~/.userscripts/WifiFetch.bash $1"

# Encrypt/Decrypt files
function encrypt { openssl enc -aes-256-cbc -salt -in $1 -out $(pwd)/encrypted ; }
function decrypt { openssl enc -aes-256-cbc -d -in $1 -out $(pwd)/decrypted ; }

# Backlight
# clone, make, and make install from the following repository
# https://github.com/haikarainen/light.git
# light -A 10 // increase backlight by 10
# light -U 10 // decrease backlight by 10
alias lightup="light -A $1"
alias lightdown="light -U $1"