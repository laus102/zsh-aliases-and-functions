# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

vag=/Volumes/Macintosh_HD/University_of_Michigan/EECS_485/vagrant
485=/Volumes/Macintosh_HD/University_of_Michigan/EECS_485
pg=~/Documents/Programming
sch=/Volumes/Macintosh_HD/University_of_Michigan
atom=~/Documents/Programming/atom
al=~/.oh-my-zsh/custom

alias af='open -a "TextEdit" ~/Documents/Programming/alwaysforget.txt'
alias afg='open -a "TextEdit" ~/Documents/Programming/alwaysforgetgit.txt'
alias al='open -a "TextEdit" ~/.oh-my-zsh/custom/aliases.zsh'
alias cpu='top -o cpu'
alias cpwd='pwd|tr -d "\n"|pbcopy'
# get all new files, then hard reset
alias gitforcepull="git fetch -—all; git reset -—hard origin/master"
alias gpoh="git push origin head"
alias gpom="git push origin master"
# Remove git from a project
alias ungit="find . -name '.git' -exec rm -rf {} \;"
# simple ip
alias ip='curl icanhazip.com'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias mem='top -o rsize' # memory
alias restart='sudo reboot'
alias shutdown='sudo shutdown now'
alias sleep='pmset displaysleepnow'
# Display the directory structure recursively in a tree format
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias vhalt='vagrant halt'
alias vssh='vagrant ssh'
alias vu='vagrant up; vagrant ssh;'
alias websiteget='wget --random-wait -r -p -e robots=off -U mozilla'

# extract any kind of file
extract() {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

access() {
  # local comm="access";
  # for var in "$@"
  # do
  #    comm="$comm"" $var"
  # done
  # echo "$comm"
  # echo 'access main security grid'
  # if ["$comm" == 'access main security grid'] then
  #     echo "access: PERMISSION DENIED....and...."
  echo "access: PERMISSION DENIED"
}

  # while(true) {echo "YOU DIDN'T SAY THE MAGIC WORD!"}

  # if ("$comm" == "access main security grid") {
  #   echo "access: PERMISSION DENIED....and...."
  #   while(1) {echo "YOU DIDN'T SAY THE MAGIC WORD!";}
  # }
  # echo "access: PERMISSION DENIED";
