# useful networking commands

## search for hosts in subnet
```
nmap -sP 192.168.0.100/24
```

or:

```
ip neighbor
```

-------------------------------------------------------------

## we don't use ifconfig anymore:

```
ip a
```

-------------------------------------------------------------

## show all open network sockets (as in netstat --inet):

```
ss -f inet
```

`-p` shows the corresponding process:

```
ss -p -f inet
```

-------------------------------------------------------------

## how fast is my network interface?

```
ethtool eth0 2>/dev/null | sed -n 's/.*Speed: \(.*\)/\1/p'
```

-------------------------------------------------------------

## show the process listening on a certain port (8200 in this case):

```
sudo lsof -i:8200
```

-------------------------------------------------------------

## network-monitoring on the commandline:

```
sudo iftop -n
```
(-n prevents resolving of adresses)

or

```
sudo slurm enp2s0
```

-------------------------------------------------------------
-------------------------------------------------------------
## Sources:

* [https://dougvitale.wordpress.com/2011/12/21/deprecated-linux-networking-commands-and-their-replacements/](https://dougvitale.wordpress.com/2011/12/21/deprecated-linux-networking-commands-and-their-replacements/)
* [https://en.wikipedia.org/wiki/Iproute2](https://en.wikipedia.org/wiki/Iproute2)
* [18 Commands to monitor network bandwith on Linux Server](https://www.binarytides.com/linux-commands-monitor-network/)

...and many more
