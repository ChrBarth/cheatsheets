# vim-cheatsheet

## Moving around:

- hjkl = left, down, up, right
- `{}` paragraph up, down

## scrolling

```
:help index
```

- `<C-E>` `<C-Y>` line up, down
- `<C-D>` `<C-U>` half page up, down
- `<C-F>` `<C-B>` page up, down

## windows/splits:

```
:help windows
```

- `<C-W>` v or `:vsplit [file]` open [file] or current file in new vertical split window
- `<C-W>` s or `:split [file]` open [file] or current file in new horizontal split window
- `<C-W>` n or `:new` create new file in (horizontal) split window
- `<C-W>` q quit current window
- `<C-W>` r rotate windows downwards/rightwards (<C-W> R upwards/leftwards)
- `<C-W>` x exchange current window with next one
- `<C-W>` + - = resize (bigger, smaller, all equal siz

## shell interaction:

- `:r !ls` reads output of _ls_ into current file
- `:! ls` executes _ls_, waits for key and returns to current file 
