FROM arm32v6/alpine:latest

LABEL maintainer "clabu"

RUN apk add --no-cache curl \
    && curl -L -O 'https://github.com/multiarch/qemu-user-static/releases/download/v4.1.0-1/qemu-arm-static' \
    && mv qemu-arm-static /usr/bin \
    && chmod 755 /usr/bin/qemu-arm-static
