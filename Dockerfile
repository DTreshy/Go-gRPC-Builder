FROM golang:1.19.4-alpine3.16

RUN apk add --update curl bash git protobuf=3.18.1-r3 protobuf-dev gcc libc-dev
RUN rm -rf /var/cashe/apk/*
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.50.1
RUN go install github.com/go-task/task/v3/cmd/task@v3.17.0
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28.1
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2.0
RUN go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@v2.11.0
RUN go install github.com/google/go-licenses@v1.2.1
RUN go install github.com/goreleaser/goreleaser@v1.10.3