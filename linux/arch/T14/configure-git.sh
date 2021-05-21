 
git config --global user.email "gsej@erskinejones.com"
git config --global user.name "gsej"

git config --global credential.helper 'cache --timeout 3600'
git config --global pager.branch false

git config pull.rebase false 

# git aliases
git config --global alias.last 'log -1 HEAD'
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status