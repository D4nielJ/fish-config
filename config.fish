## load_nvm > /dev/stderr

function fish_greeting
  set_color FF8591
  echo "Fish is ready ~"
end

alias vim "nvim"
alias fishy "vim ~/.config/fish/config.fish"
alias off "shutdown now"
alias nr "npm run"
alias sai "sudo apt install"
alias pn "pnpm"
alias ... "cd .. && cd .."
alias dock "systemctl --user start docker-desktop"
alias jmeter "bin/apache-jmeter-5.5/bin/jmeter.sh"

## Linting
alias lies "npx eslint ."

## RoR dev server
alias wps "./bin/webpack-dev-server"

## Git
alias gam "ga. && gcm"
alias gau "git add -u"
alias ga. "git add ."
alias branch "git branch"
alias gco "git checkout"
alias gcob "gco -b"
alias clone "git clone"
alias gcm "git commit -m"
alias fetch "git fetch"
alias pull "git pull origin"
alias push "git push"
alias stat "git status"  # "status" is protected name so using "stat" instead
alias tag "git tag"
alias newtag "git tag -a"
alias log "git log --graph --decorate --oneline" # this one is just pure terminal beauty

# Changing "ls" to "exa"
alias ls "exa -al --color=always --group-directories-first" # my preferred listing
alias la "exa -a --color=always --group-directories-first"  # all files and dirs
alias ll "exa -l --color=always --group-directories-first"  # long format
alias lt "exa -aT --color=always --group-directories-first" # tree listing
alias l. "exa -a | egrep "^\.""

# confirm before overwriting something
alias cp "cp -i"
alias mv "mv -i"
alias rm "rm -i"

function mkdir-cd
  mkdir -p -- $argv && cd -- $argv
end

abbr -a mc mkdir-cd

# ENV
set -gx PNPM_HOME "/home/d4nielj/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
set -gx JAVA_HOME "/usr/lib/jvm/java-1.11.0-openjdk-amd64"
set -gx JRE_HOME "/usr/lib/jvm/java-1.11.0-openjdk-amd64"
# ENV end

alias rld "source ~/.config/fish/config.fish"


# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
