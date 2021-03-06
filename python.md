# python3 cheatsheet

## lambda

```python
# returns true if number is even:
is_even = lambda x: x % 2 == 0

print("Even" if is_even(2) else "Not Even")

# shortform for:
def iseven(num):
    if num % 2 == 0:
        return True
    else:
        return False
```

## list comprehension

```python
l = [ 2, 3, 5, 10, 200, -10, 4, -200 , 143 ]

sq = [ x**2 for x in l ]
print(sq)

sq = [ x**2 for x in l if x>0 ]
print(sq)

# shortform for:

squares = []
for x in l:
    squares.append(x**2)
print(squares)
```

## lists of lists:

```python
a = [['A','B'],['c','d'],[5,6]]
l = [ c for b in a for c in b ]
print(l)
```

Result:

```
['A', 'B', 'c', 'd', 5, 6]
```

## enumerate

```python
beatles = ['John', 'Paul', 'George', 'Ringo']

for i, beatle in enumerate(beatles):
    print("%i --> %s" %(i, beatle))
```

## counting with dictionaries

```python
l = ['John', 'Paul', 'John', 'George', 'Ringo', 'George', 'Paul', 'Ringo', 'Paul', 'George', 'John']

d = {}
for beatle in l:
    # d.get(beatle, 0) either gets the value for d[beatle] or zero if it does not exist
    # other method would be using collections.defaultdict
    d[beatle] = d.get(beatle, 0) + 1
print(d)
```

Result:

```python
{'John': 3, 'Paul': 3, 'George': 3, 'Ringo': 2}
```

## print list without brackets

```python
l = ['John', 'Paul', 'George', 'Ringo']
print(*l, sep=" ")
```

Result:

```
John Paul George Ringo
```

## read output from shell command:

```python
import subprocess
p = subprocess.Popen("ls", stdout=subprocess.PIPE)
# stdout.read() returns bytes, so we decode to utf8:
p_output = p.stdout.read().decode("UTF-8")
print(p_output.rstrip("\n"))
```

Result:

```
build.sh
git-cheatsheet.md
html
network.md
pdf
python.md
README.md
shell-tricks.md
unicode-cheatsheet.md
vim-cheatsheet.md
```
