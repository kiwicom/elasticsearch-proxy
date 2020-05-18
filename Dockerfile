FROM golang:1.9-alpine

RUN apk update && apk add curl \
                          git \
                          bash \
                          make && \
     rm -rf /var/cache/apk/*

RUN mkdir /app

ADD . /app/

WORKDIR /app

RUN make

CMD ./bin/proxy
