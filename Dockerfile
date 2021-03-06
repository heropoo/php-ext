FROM ubuntu:18.04

MAINTAINER	Heropoo "aiyouyou1000@163.com"

RUN apt-get update && apt-get install -y openssh-server git 

RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config

ENV ROOT_PASSWORD 123456
RUN echo "root:${ROOT_PASSWORD}" | chpasswd

EXPOSE 22
EXPOSE 80

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

CMD ["/usr/bin/entrypoint.sh"]
