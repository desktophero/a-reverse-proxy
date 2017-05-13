FROM alpine
MAINTAINER Jason Walker<desktophero@gmail.com>

RUN set -x \
  && apk update \
  && apk upgrade \
  && apk add --no-cache apache2 apache2-proxy apache2-utils apache2-proxy-html apache2-ssl openrc \
  && rc-update add apache2 default

RUN mkdir -p /var/tmp/proxy-cache \
  && touch /var/tmp/httpd.pid \
  && chown apache /var/tmp/httpd.pid

EXPOSE 80 443
USER apache
ENTRYPOINT ["httpd","-DFOREGROUND"]
