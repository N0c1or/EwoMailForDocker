docker build -t ewomail:v1 .;
docker run -itd --name ewomail --restart=always --privileged=true -p 7000:7000 -p 7010:7010 -p 25:25 -p 143:143 -p 993:993 -p 995:995 -p 587:587 -p 110:110 -p 465:465 -p 8020:8020 -p 8000:8000 -p 8010:8010 ewomail:v1;
docker cp ./CentOS-Base.repo ewomail:/root/install/CentOS-Base.repo
docker cp ./epel.repo ewomail:/root/install/epel.repo
docker exec -d --privileged ewomail /bin/sh -c 'cd /root/install/ && sh start.sh xxx.com';
docker exec -d --privileged ewomail /bin/sh -c "echo '127.0.0.1   mail.xxx.com smtp.xxx.com imap.xxx.com' >> /etc/hosts";
