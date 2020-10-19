# Hello Git!

This repository is created just for playing with Git.

***

For public repositories I use of course [GitHub](https://github.com) and for private repositories I use [Bitbucket](https://bitbucket.org) which is free up to 5 team members. I recommend to watch this course on Pluralsight [How Git Works](https://app.pluralsight.com/library/courses/how-git-works/).

## Git commands for daily use

`git init` creates an empty Git repository or reinitializes an existing one.

`git clone https://github.com/torvalds/linux.git` clones a repository into a new directory.

`git clone <url> <directory>` clones a repository into a specific directory.

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

`git commit -a|--all -m|--message` tells to automatically stage files that have been modified and deleted before committing.

`git commit --amend` commits the tracked changes to the last commit.

`git commit --amend --no-edit` commits the tracked changes to the last commit without changing the message.

`git commit --amend --no-edit --date="now"` changes the timestamp of an old commit.

`git commit --amend --no-edit --reset-author` resets the author of an old commit.

***

`git status` obtains a summary of which files have changes that are staged for the next commit.

`git log --graph` draws a text-based graphical representation of the commit history on the left hand side of the output.

`git log --oneline` this is a shorthand for `git log --pretty=oneline --abbrev-commit` used together.

`git reflog` lists a record of all commits that are or were referenced in your repo at any time.

`git blame` helps you determine who made changes to a file.

`git diff` shows changes between commits.

`git diff <branch> <branch> -- <file>` shows changes between commits of specific branches and a file.

***

`git clean -xfd` cleans the working tree by recursively removing files that are not under version control, starting from the current directory.

`git revert <commit>` reverts some existing commits. A new commit (reverted) is created.

`git reset <--soft|--mixed|--hard>` enjoy :-)

***

`git branch -l|--list` or `git branch` lists all of the branches in your local repository.

`git branch -l -a|-all` lists all of the branches in your local and remote repository.

`git branch -l -r|--remotes` lists all of the branches in your remote repository.

`git branch <branch>` creates a new branch called <branch>. Note: This does not check out the new branch.
  
`git branch -d|--delete <branch>` deletes the specified branch. Note: This is a “safe” operation in that Git prevents you from deleting the branch if it has unmerged changes.

`git branch -D <branch>` or `git branch -d -f|--force <branch>` forces delete the specified branch, even if it has unmerged changes.

`git branch -u <repository>/<remotebranch>` links the current local branch with a remote branch then you can just use `git push` and `git pull` without specifying a repository or a branch.

`git branch -u <repository>/<remotebranch> <localbranch>` links a local branch with a remote branch then you can just use `git push` and `git pull` without specifying a repository or a branch.

`git branch --contains <commit>` lists branches which contain the specified commit.

`git branch -r --contains <commit>` lists branches which contain the specified commit and remote tracking branches as well.

***

`git checkout <branch>|<commit>|<file>` switches branches, commits or files is a straightforward operation.

`git checkout -b <branch>` creates a new branch and then checks it out.

***

`git rebase <branch>` from the current branch to the target (NOT leaving your history).

`git merge <branch>` from the source branch to the current branch (leaving your history).

`git merge --no-commit` prevents the MERGE COMMIT to occur.

`git cherry-pick <commit>` enables a commit to be picked by reference and appended to the current working HEAD.

***

`git stash (save)` temporarily shelves changes you've made to your working copy so you can work on something else.

`git stash --include-untracked` tells git stash to also stash your untracked files.

`git stash list` you can run git stash several times to create multiple stashes, and then use git stash list.

`git stash pop` git stash pop will re-apply the most recently created stash.

`git stash apply` like pop, but do not remove the state from the stash list.

`git stash drop` if you decide you no longer need a particular stash, you can delete it with git stash drop.

`git stash clear` or you can delete all stashes.

***

`git remote` lists all remote repositories.

`git remote add <name> <url>` adds a new remote repository.

`git remote show <name>` shows some information about the remote repository.

`git remote prune origin` deletes all stale remote-tracking branches under <name>. These stale branches have already been removed from the remote repository referenced by <name>, but are still locally available in remotes/<name>.

***
`git fetch` only downloads new data from a remote repository, but it doesn't integrate any of this new data into your working files.

`git pull` fetches from and integrate with another repository or a local branch.

`git pull origin <remotebranch>` fetches a copy of the master branch from the original repository, and merges it with the current branch you have checked out.

***

`git push` pushes commits made on your local branch to a remote repository.

`git push <repository> <remotebranch>` pushes commits made on your local branch to a remote branch in the remote repository.

`git push -u|--set-upstream <repository> <remotebranch>` pushes commits made on your local branch to a remote branch in the remote repository and links your local branch with a remote branch then you can just use `git push` and `git pull` without specifying a repository or a branch.

`git push <repository> -d|--delete <remotebranch>` deletes a branch from the remote repository.

***

`.gitignore` is a file in which you specifies intentionally untracked files to ignore.
