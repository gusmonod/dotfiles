# Changed commands
# ================

alias g=hub
alias uniq='sort | uniq'

# Shortened commands
# ==================

alias n=npm
alias gs='g status'
alias gt='g stash save -u'
alias gf='g fetch'
alias gm='g merge'
alias gsp='g sta pop'

# New commands
# ============

#alias path='echo -e ${PATH//:/\\n}'
#alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
#alias hideicons='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
#alias showicons='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
alias disable_spotlight='sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search'
alias reenable_spotlight='sudo chmod 755 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search'

# Shortened commands
# ==================

alias po='popd'
alias pu='pushd'
alias tmx='tmux'

# Better ls
# =========

# adds color and / or @ at the end of files
alias ls='ls -CGFB'
alias l='ls -CGFB'
# lists all files with more info
alias ll='ls -lha'
# lists all files with more info and ACL
alias le='ls -lhae'
# shows all files (except for . and ..)
alias la='ls -lheA'
# sort by extension
alias lx='ls -lXB'
# sort by size, biggest last
alias lk='ls -lSr'
# sort by date, most recent last
alias lt='ls -ltr'
# sort by/show change time, most recent last
alias lc='ls -ltcr'
# sort by/show access time, most recent last
alias lu='ls -ltur'
# shows only files starting with . (but no directory content)
alias l.='ll -d .*'

