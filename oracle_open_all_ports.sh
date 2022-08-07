#!/bin/bash
echo -e "\033[32m 正在执行 \033[0m"
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
iptables-save
sudo apt-get install iptables-persistent -y
netfilter-persistent save
netfilter-persistent reload
echo -e "\033[32m 完成 \033[0m"
