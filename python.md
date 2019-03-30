# python3 cheatsheet

```
#!/usr/bin/python3
# -*- coding: UTF-8 -*-
```

# lambda

```
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

# list comprehension

```
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

# lists of lists:

```
a = [['A','B'],['c','d'],[5,6]]
l = [ c for b in a for c in b ]
print(l)
```

# enumerate

```
beatles = ['John', 'Paul', 'George', 'Ringo']

for i, beatle in enumerate(beatles):
    print("%i --> %s" %(i, beatle))
```

# counting with dictionaries

```
l = ['John', 'Paul', 'John', 'George', 'Ringo', 'George', 'Paul', 'Ringo', 'Paul', 'George', 'John']

d = {}
for beatle in l:
    # d.get(beatle, 0) either gets the value for d[beatle] or zero if it does not exist
    # other method would be using collections.defaultdict
    d[beatle] = d.get(beatle, 0) + 1
print(d)
```

# print list without brackets

```
l = ['John', 'Paul', 'George', 'Ringo']
print(*l, sep=" ")
```
# -> John Paul George Ringo
