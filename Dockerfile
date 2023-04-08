FROM golang:1.20.3-alpine3.17

RUN apk add --update protobuf=3.21.9-r0 protobuf-dev=3.21.9-r0 gcc=12.2.1_git20220924-r4 libc-dev=0.7.2-r3 git=2.38.4-r1 bash=5.2.15-r0
RUN rm -rf /var/cashe/apk/*
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.52.2
RUN go install github.com/go-task/task/v3/cmd/task@v3.23.0
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.30.0
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.3.0
RUN go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@v2.15.2
