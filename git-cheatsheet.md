# GIT-CHEATSHEET

by ChrBarth

  - clone via ssh:

  `ssh-add`
  to unlock ssh-key (only type password once)

  `git clone git@github.com:[user]/[repository].git`

  - check for changes:

  `git status`

  - add file[s] for upload:

  `git add [file] [file] ...`

  - send update:

  ```
  git commit
  git push
  ```
  
  - other way round (if the repository on github is newer than the local one):

  `git pull`

  (*add* and *commit* commands stay the same)

  - undo all changes on a certain file:

  `git checkout -- <File>`

  - create remote repo via ssh:

    - create a bare repo in an empty directory (~/temp/test.git):

    ```
    mkdir ~/temp/test.git
    cd ~/temp/test.git
    git init --bare
    ```

    - create a local repository:

    ```
    mkdir ~/temp/test.local
    cd ~/temp/test.local
    git init
    vim README.md
    git add .
    git commit -m 'initial commit'
    git remote add origin user@localhost:~/temp/test.git
    git push --set-upstream origin master
    ```

    - ~/temp/test.git can now be cloned anywhere with:

    `git clone user@localhost:~/temp/test.git`

  - rename main branch:

  `git branch -m master main`

  - stop already tracked file from being tracked:

  `git update-index --skip-worktree <filename>`

  - undo (start tracking again):

  `git update-index --no-skip-worktree <filename>`

  - undo last commit but keep all changes:

  `git reset --soft HEAD~1`

  - the same but discard all changes:

  `git reset --hard HEAD~1`

  - edit the last commit (because a file did not get included or got updated after the commit):

  `git commit --amend`
