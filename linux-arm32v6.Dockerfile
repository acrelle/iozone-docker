FROM arm32v6/alpine
COPY tmp/qemu-arm-static /usr/bin/qemu-arm-static

LABEL maintainer="anthony@relle.co.uk"

RUN apk --update upgrade && \
    apk add --no-cache --virtual=temporary curl gcc make build-base && \
    curl -o /tmp/iozone.tar http://www.iozone.org/src/current/iozone3_434.tar && \
    cd /tmp && \
    tar -xf /tmp/iozone.tar && \
    cd /tmp/iozone*/src/current && \
    make linux && \
    cp iozone /usr/bin/iozone && \
    apk del temporary && \
    rm -rf /var/cache/apk/* /tmp/iozone*

ENTRYPOINT ["/usr/bin/iozone"]

