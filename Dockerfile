FROM golang:1.9.1

WORKDIR /go/src/app
COPY . .

RUN go get -v ./...
RUN go install -v ./...

EXPOSE 50051

CMD [ "hello-proto" ]
