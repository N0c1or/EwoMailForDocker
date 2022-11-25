FROM centos:7
COPY EwoMail /root/
CMD ["/usr/sbin/init"]