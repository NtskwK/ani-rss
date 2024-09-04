FROM alpine:edge as builder
COPY target/ani-rss /usr/app/ani-rss
COPY docker/run.sh /usr/app/run.sh
WORKDIR /usr/app
VOLUME /config
ENV PORT="7789"
ENV CONFIG="/config"
ENV TZ="Asia/Shanghai"
EXPOSE 7789
CMD ["/bin/bash","/usr/app/run.sh"]
