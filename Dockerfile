FROM alpine
MAINTAINER Jason Walker<desktophero@gmail.com>

RUN set -x \
  && apk update \
  && apk upgrade \
  && apk add --no-cache apache2 apache2-proxy apache2-utils apache2-proxy-html apache2-ssl openrc \
  && rc-update add apache2 default

RUN mkdir -p /usr/local/share/proxy-cache \
  && chown apache /usr/local/share/proxy-cache
USER apache
COPY httpd.conf /etc/apache2/httpd.conf
EXPOSE 80 8080 443
ENTRYPOINT ["/usr/sbin/httpd","-DFOREGROUND"]
