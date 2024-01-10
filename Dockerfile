FROM golang:1.21.6-alpine3.19

RUN apk add --update protobuf=24.4-r0 protobuf-dev=24.4-r0 gcc=13.2.1_git20231014-r0 libc-dev=0.7.2-r5 git=2.43.0-r0 bash=5.2.21-r0
RUN rm -rf /var/cashe/apk/*
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.55.2
RUN go install github.com/go-task/task/v3/cmd/task@v3.33.1
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.32.0
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.3.0
RUN go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@v2.18.1
