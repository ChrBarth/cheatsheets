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
