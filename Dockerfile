FROM alpine:3.9 AS base
RUN apk add --no-cache curl bash tar
RUN curl -L https://github.com/golang-migrate/migrate/releases/download/v4.3.1/migrate.linux-amd64.tar.gz | tar xvz
RUN mv ./migrate.linux-amd64 migrate

ENTRYPOINT ["./migrate"]