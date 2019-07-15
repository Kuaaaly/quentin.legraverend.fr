FROM golang:alpine as builder

COPY server.go /opt
WORKDIR /opt
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN go build server.go

FROM scratch
COPY . /
COPY --from=builder /opt/server /

CMD ["./server"]
