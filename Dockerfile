FROM golang:1.21.4-alpine3.18

RUN apk add --update protobuf=3.21.12-r2 protobuf-dev=3.21.12-r2 gcc=12.2.1_git20220924-r10 libc-dev=0.7.2-r5 git=2.40.1-r0 bash=5.2.15-r5
RUN rm -rf /var/cashe/apk/*
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.54.2
RUN go install github.com/go-task/task/v3/cmd/task@v3.29.1
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.31.0
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.3.0
RUN go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@v2.17.1
