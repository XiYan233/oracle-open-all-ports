## Oracle Cloud 开放所有端口
```shell
wget https://raw.githubusercontent.com/Demontisa/oracle-open-all-ports/main/oracle_open_all_ports.sh
bash oracle_open_all_ports.sh
```

### 如果只监听在了IPv6端口上，就执行以下命令
```shell
nano /etc/default/grub
# 增加参数名为GRUB_CMDLINE_LINUX的值，即 ipv6.disable=1
GRUB_CMDLINE_LINUX="ipv6.disable=1 ..."
grub-mkconfig -o /boot/grub/grub.cfg
reboot
```
