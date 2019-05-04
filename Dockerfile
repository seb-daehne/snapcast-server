FROM alpine:3.9.3
LABEL maintainer "Sebastian Daehne <daehne@rshc.de>"

RUN apk update && apk upgrade && apk add --no-cache snapcast-server
RUN mkdir -p /var/lib/snapserver && chown snapcast.snapcast /var/lib/snapserver

USER snapcast
ENTRYPOINT ["/usr/bin/snapserver"]
