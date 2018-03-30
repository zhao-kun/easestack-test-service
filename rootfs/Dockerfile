FROM golang:1.9.4-alpine3.7 AS --builder

COPY server.go /megaease/server.go

RUN go build -o /megaease/test-server /megaease/server.go


FROM alpine:3.6
RUN apk add --no-cache tini libc6-compat bash curl procps

COPY --from builder test-server /megaease/test-server

COPY health-check.sh /

EXPOSE 18080

CMD /megaease/test-server

