# Hello Git!

This repository is created just for playing with Git.

## Git commands for daily use

`git init` creates an empty Git repository or reinitializes an existing one.

`git clone https://github.com/torvalds/linux.git` clones a repository into a new directory.

***

`git config -l|--list` lists all variables set in config file, along with their values.

There are three config levels --local, --global, --system.

`git config user.name "Your Name"` sets a user name that git will associate with locally created commits.

`git config user.email "Your email"` sets a user email that git will associate with locally created commits. 

`git config --global user.name "Your Name"` sets a user name that git will associate with globally created commits.

`git config --global user.email "Your email"` sets a user email that git will associate with globally created commits. 

***

`git add .` stages files for commit to your local repository.
`git add .` is equivalent to `git add --all` and `git add -A`.

`git commit -m|--message "Commit message"` commits the tracked changes.

***

`git status` obtains a summary of which files have changes that are staged for the next commit.

***

`git pull` fetches from and integrate with another repository or a local branch.

`git push` updates remote refs along with associated objects.

***

`git branch -l|--list` or `git branch` lists all of the branches in your local repository.

`git branch -l -a|-all` lists all of the branches in your local and remote repository.

`git branch -l -r|--remotes` lists all of the branches in your remote repository.

`git branch <branch>` creates a new branch called <branch>. Note: This does not check out the new branch.
  
`git branch -d|--delete <branch>` deletes the specified branch. Note: This is a “safe” operation in that Git prevents you from deleting the branch if it has unmerged changes.

`git branch -D <branch>` or `git branch -d -f|--force <branch>` forces delete the specified branch, even if it has unmerged changes.

***

`git checkout <branchname>|<commit>|<file>` switches branches, commits or files is a straightforward operation.
