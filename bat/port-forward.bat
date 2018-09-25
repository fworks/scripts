@echo off

netsh interface portproxy add v4tov4 listenport=80 connectport=80 connectaddress=192.168.99.100
netsh interface portproxy add v4tov4 listenport=443 connectport=443 connectaddress=192.168.99.100
netsh interface portproxy add v4tov4 listenport=1521 connectport=1521 connectaddress=192.168.99.100

