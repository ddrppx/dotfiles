# Python shortcut
alias py='python3'

# Neovim shortcut
alias v='nvim'

# mkdir + cd
function take(){
    mkdir -p $1
    cd $1
}

# Clear
alias c='clear'

# Taking notes
function note {
    PATHING_TO_FILE="$HOME/notes.txt"
    echo "Date: $(date +'%A %H:%M %d/%m/%Y' | awk '{ print toupper($0) }')" >> $PATHING_TO_FILE
    echo $@ >> $PATHING_TO_FILE
    echo "" >> $PATHING_TO_FILE

    echo "Noted."
}

# Git related
alias gs='git status'

# Directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../'

# ls -> exa
alias ls='exa --color=always --group-directories-first'
alias la='exa -la --color=always --group-directories-first'
alias ll='exa -l --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'

# Pulseaudio reset [Ubuntu Things]
function audiofix(){
    echo "Restarting Pulse Audio..."

    pulseaudio -k && pulseaudio --start

    echo "Done."
}
