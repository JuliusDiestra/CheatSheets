# GIT COMMANDS

## Clone remote repo
```
git clone <clone-with-ssh>
```
## Update local repository track
```
git fetch origin
```
Note: Nothing is added or remove in local branch. Only updates info about what is going on in the remote repository.

## Create local branch from remote branch
```
git checkout -b <local-branch-name> <origin/remote-branch-name>
```
It is suggested to use the same **local-branch-name** and **remote-branch-name**

## Push commits to Remote Branch in repository
```
git push origin <local-branch-name>
```
In case the branch does not exist in the remote branch, it will be added.

In case the branch exists, as soon as the parent of the local branch is the remote branch there I want to push, it will be ok.
It is suggested to use the same **local-branch-name** and **remote-branch-name**

## Commit to an existing Remote Branch

```
git push origin <remote-branch-name>
```

## Reset like origin/main
```
git fetch origin
git reset --hard origin/master
```
Afterwards you can check the file you might need to remove:
```
git clean -n -f
```
Then, if you want to remove the files,
```
git clean -f
```
## Squash several commits
1. List commits
```
git log
```
It will look like:

1.1 Last commit

1.2 Commit

1.3 Commit

1.4 Commit

1.5 Parent I want

2. I want to squeez all above the parent I want
```
git rebase --interactive HEAD~4
```
Note: I wanted to squeez the four above
3. Interactive will open: Leave the top in **pick** and rest in **squash**
pick
squash
squash
squash
4. Update comment

## Ammend commit
```
git commit --amend --no-edit
```

## Rebase madness
Let's say you have a local branch adding a new feature. Then the remote origin/master was updated.
You might need to rebase the changes in remote origin/master to your local feature branch.
1. I always keep local master branch clean.
```
git checkout master
git fetch origin
git pull --rebase
```
2. Rebase on your local feature branch
```
git checkoub <feature-branch>
git rebase master
```
## Submodules

* Adding submodule
```
git submodule add <repository-ssh-url>
```

* Initiate submodule
```
git submodule update --init --recursive
```

