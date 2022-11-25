# EwoMail for docker

安装：
```
sh ./start.sh
```
安装过程有点慢且没有日志，请你直接访问 http://IP:8000 时不时刷新几次，如果超过半小时无法访问，说明安装存在问题。

如果你想要自定义 EwoEmail 的域名，请修改 start.sh 里面的内容。
```
docker exec -d --privileged ewomail /bin/sh -c 'cd /root/install/ && sh start.sh xxx.com';
docker exec -d --privileged ewomail /bin/sh -c "echo '127.0.0.1   mail.xxx.com smtp.xxx.com imap.xxx.com' >> /etc/hosts";
```
将这里的 `xxx.com` 修改成你的域名。
