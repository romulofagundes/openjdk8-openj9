FROM adoptopenjdk/openjdk8-openj9:alpine-slim

WORKDIR /opt/java/openjdk

RUN apk update && \
    apk add ca-certificates && \
    rm -rf /var/cache/apk/* && \
    addgroup -S builder && \
    adduser -S builder -G builder

USER builder