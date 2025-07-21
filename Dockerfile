FROM udandy/systemctl
COPY EwoMail /root/
CMD ["/usr/sbin/init"]
