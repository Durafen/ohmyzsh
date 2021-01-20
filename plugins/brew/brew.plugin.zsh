alias brewp='brew pin'
alias brewls='brew list -1'
alias brewsp='brew list --pinned'
alias brewbo='brew update && brew outdated'
alias brewbc='brew upgrade && brew cleanup'
alias brewbu='brewbo && brewbc'
alias brewuf='brew upgrade --formula'

alias brews="brew search $@"
alias brewi="brew install $@"
alias brewri="brew reinstall $@"
alias brewf="brew info $@"
alias brewu="brew uninstall $@"
alias brewup="brew update && brew upgrade"

alias brewdeps='brew leaves | xargs brew deps --installed --for-each | sed "s/^.*:/$(tput setaf 4)&$(tput sgr0)/"'