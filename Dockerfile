FROM golang:latest

WORKDIR /go/src/hello-proto
COPY . .

RUN go get
RUN go build -o main .

EXPOSE 50051

CMD [ "./main" ]
