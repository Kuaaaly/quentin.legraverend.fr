FROM golang:alpine as builder

COPY go/server.go /opt
WORKDIR /opt
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN go build server.go

FROM scratch
COPY static /
COPY --from=builder /opt/server /

CMD ["./server"]
