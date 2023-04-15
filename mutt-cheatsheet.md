# mutt-cheatsheet

## configuration:

### save passwords in gpg-file:

- create file with passwords for mail-accounts ("$" needs to be escaped!):

````
set pass1 = "\$up€R5ecRE+pASsW0rD"
set pass2 = "password"
...
````

- encrypt the file with `gpg -e -r [gpg user] [password file]`
- source file in config: `source "gpg -dq [password file] |"`

## misc:

- select multiple files as attachment: use t (tag)
- delete files with pattern: `t` (tag) `;` (do something with tag) `d` (delete)
- filter mails: use l
  - filter all mails marked for deletion: l~D
  - show all mails: l~A
  - show all tagged mails: l~T
  - more: [mutt manual section 3.1](http://www.mutt.org/doc/manual/#patterns)
- delete multiple mails with regex: `D`, then `.*`
  from [UK Computer Science Department](https://www.cs.uky.edu/docs/users/mutt-cheat-sheet.html)
