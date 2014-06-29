FROM sameersbn/ubuntu:12.04.20140628
MAINTAINER sameer@damagehead.com

RUN apt-get update && \
		apt-get install -y mysql-server && \
		rm -rf /var/lib/mysql/mysql && \
		apt-get clean # 20140418

ADD assets/ /app/
RUN chmod 755 /app/init

EXPOSE 3306

VOLUME ["/var/lib/mysql"]

CMD ["/app/init"]
