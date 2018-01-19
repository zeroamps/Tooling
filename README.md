# Hello GitHub!
This repository is created just for playing with GitHub.

## Git commands for daily use

`git init` creates an empty Git repository or reinitializes an existing one.

`git clone https://github.com/torvalds/linux.git` clones a repository into a new directory.

***

`git config -l` or `git config --list` lists all variables set in config file, along with their values.

There are three config levels --local, --global, --system.

`git config user.name "Your Name"` or `git config --local user.name "Your Name"` sets a user name that git will associate with locally created commits.

`git config user.email "Your email"` or `git config --local user.email "Your email"` sets a user email that git will associate with locally created commits. 

`git config --global user.name "Your Name"` sets a user name that git will associate with globally created commits.

`git config --global user.email "Your email"` sets a user email that git will associate with globally created commits. 

***

`git add .` stages files for commit to your local repository.
`git add .` is equivalent to `git add --all` and `git add -A`.

`git status` obtains a summary of which files have changes that are staged for the next commit.

`git commit -m "Commit message"` or `git commit --message "Commit message"` commits the tracked changes and prepares them to be pushed to a remote repository.

***

`git pull` fetches from and integrate with another repository or a local branch.

`git push` updates remote refs along with associated objects.
