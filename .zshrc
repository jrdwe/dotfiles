
# short .zshrc

# aliases
alias h="history"
alias d='dirs -v'
alias ,='cd ..'
alias ls='ls -G'
alias glo='git log --pretty="oneline"'
alias glol='git log --graph --oneline --decorate'

# text editor
EDITOR=hx

# directory stack
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# prompt aesthetic
autoload -U promptinit; promptinit
prompt pure

# completion system
autoload -U compinit; compinit
 
# history settings
HISTFILE=~/.history-zsh
HISTSIZE=5000
SAVEHIST=5000

setopt append_history           # allow multiple sessions to append to one history
setopt extended_history         # Write history in :start:elasped;command format
setopt hist_expire_dups_first   # expire duplicates first when trimming history
setopt hist_find_no_dups        # When searching history, don't repeat
setopt hist_reduce_blanks       # Remove extra blanks from each command added to history
setopt hist_verify              # Don't execute immediately upon history expansion
setopt inc_append_history       # Write to history file immediately, not when shell quits
setopt share_history            # Share history among all sessions

# tab completion
autoload -Uz compinit && compinit
setopt complete_in_word         # cd /ho/jar/tm<TAB> expands to /home/jarrydwebb/tmp
setopt auto_menu                # show completion menu on succesive tab presses
setopt autocd                   # cd to a folder just by typing it's name

# path 
typeset -U path                 # keep duplicates out of the path

export PATH=$PATH:/usr/local/opt/llvm/bin
