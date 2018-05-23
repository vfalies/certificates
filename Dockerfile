FROM alpine:latest
LABEL maintainer="Vincent Faliès <vincent@vfac.fr>"

RUN apk --update add ca-certificates && \
    apk add -U \
        openssl \
    && rm -rf /var/cache/apk/*

ADD certificate.sh /app/
ADD regenerate_certificate.sh /app/

WORKDIR /app