# syntax=docker/dockerfile:1

FROM golang:1.19-alpine as builder

RUN go install github.com/FreifunkBremen/yanic@latest

FROM alpine

WORKDIR /app
COPY --from=builder /go/bin/yanic .

VOLUME /config /data

CMD [ "/app/yanic", "serve", "--config", "/config/config.toml" ]
