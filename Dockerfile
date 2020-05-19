FROM golang:alpine

RUN apk update && apk add curl \
                          git \
                          bash \
                          make && \
     rm -rf /var/cache/apk/*

WORKDIR $GOPATH/src/github.com/medcl/elasticsearch-proxy/

ADD . .

RUN make

CMD ./bin/proxy
