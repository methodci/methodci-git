FROM alpine:3.8
RUN apk add --no-cache ca-certificates mailcap

RUN apk add --no-cache git jq
RUN mkdir /workdir

ADD bin /methodci/bin/
ENV PATH="/methodci/bin:${PATH}"

WORKDIR /workdir

ENTRYPOINT [ "run.sh" ]
