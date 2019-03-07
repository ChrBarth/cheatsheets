# vim-cheatsheet

## Moving around:

- `h`, `j`, `k`, `l` = left, down, up, right
- `gj`, `gk` line down/up (in wrapped line)
- `{}` paragraph up, down
- `w` (`W`) go to beginning of next word (WORD)
- `b` (`B`) go to beginning of previous word (WORD)
- `e` (`E`) go to end of next word (WORD)
- `ge` (`gE`) go to the end of the previous word (WORD)

## searching:
- `/[pattern]` search forward for pattern
- `?[pattern]` search backwards
- `f[character]` cursor to the next [character] (`F`: search backwards)
- `t[character]` cursor till before next [character] (`T`: search backwards)
- `y/pattern` yank until pattern (? for backwards search)
- `d/pattern` delete until pattern (? for backwards search)
- `c/pattern` change until pattern (? for backwards search)
- `*` search forward for word under cursor (`#` for backwards search)
- `<C-r> "` insert register in current search
- `<C-n>` autocomplete in insert mode (`<C-n>/<C-p>` goes back/forward)
- `<C-x><C-f>` autocomplete filename in insert mode

## scrolling

```
:help index
```

- `<C-E>` `<C-Y>` line up, down
- `<C-D>` `<C-U>` half page up, down
- `<C-F>` `<C-B>` page up, down
- `zt` cursor line at top of window (`z<CR>` cursor to first non-blank)
- `zz` cursor line at center of window (`z.` cursor to first non-blank)
- `zb` cursor line at bottom of window (`z-` cursor to first non-blank)

## windows/splits:

```
:help windows
```

- `<C-W> v` or `:vsplit [file]` open [file] or current file in new vertical split window
- `<C-W> s` or `:split [file]` open [file] or current file in new horizontal split window
- `<C-W> n` or `:new` create new file in (horizontal) split window (`:vnew` for vertical split)
- `<C-W> q` quit current window
- `<C-W> r` rotate windows downwards/rightwards (<C-W> R upwards/leftwards)
- `<C-W> x` exchange current window with next one
- `<C-W> + - =` resize (bigger, smaller, all equal size)
- `:rightbelow` or `:leftabove` before split command: open new window right/below or left/above current

## folding:

```
:help folding
```

- `za` open/close current fold
- `zM` close all folds
- `zR` open all folds
- `[z` move to start of current open fold
- `]z` move to end of current open fold
- `zj` move downwards to the start of the next fold
- `zk` move upwards to the end of the previous fold

## misc:
- `gUiw` make word under cursor uppercase
- `gu2j` make two lines down lowercase
- `m[a-zA-Z]` sets mark [a-zA-Z]
- `'[a-z]` jump to mark [a-z] in current file (first non-blank character in line)
- ```[a-z]`` jump to mark [a-z] in current file
- `'[A-Z0-9]` jump to mark [A-Z0-9] in file it was set
- `:map` list all mappings
- `:nmap` list all normal mode mappings (vmap/imap for visual/insert mode)
- `:map <Leader>` list all leader-mappings

## shell interaction:

- `:r file.txt` reads contents of file.txt into current file
- `:r !ls` reads output of _ls_ into current file
- `:! ls` executes _ls_, waits for key and returns to current file 

## resources:

[Official Vim documentation](https://www.vim.org/docs.php)

[Vim Tips Wiki](https://vim.fandom.com/wiki/Vim_Tips_Wiki)

