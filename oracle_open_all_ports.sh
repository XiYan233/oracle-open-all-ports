#!/bin/bash
echo -e "\033[32m 正在执行 \033[0m"
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -F
sudo apt-get purge netfilter-persistent -y
echo -e "\033[32m 5秒后重启 \033[0m"
sleep 5s
reboot
