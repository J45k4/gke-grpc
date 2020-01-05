FROM nginx:1.17

RUN apt-get update
RUN apt-get install -y openssl1.1

ADD nginx.conf /etc/nginx/nginx.conf

ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

CMD /usr/local/bin/run.sh