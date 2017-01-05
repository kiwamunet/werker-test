FROM ubuntu
MAINTAINER kiwamunet <kiwamunet@gmail.com>
RUN apt-get update
RUN apt-get install -y nginx
ADD index.html /usr/share/nginx/html/
ADD test.sh /tmp/test.sh
ENTRYPOINT ["/tmp/test.sh"]
