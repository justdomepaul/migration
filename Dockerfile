FROM alpine:3.8 AS base
RUN apk add --no-cache curl bash

FROM alpine:3.8 AS unzip
RUN apk add --no-cache curl bash tar
RUN curl -L https://github.com/golang-migrate/migrate/releases/download/v4.2.2/migrate.linux-amd64.tar.gz | tar xvz
#RUN mv ./migrate.linux-amd64 migrate

FROM base
COPY --from=unzip /migrate.linux-amd64 /migrate