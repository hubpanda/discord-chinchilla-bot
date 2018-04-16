FROM golang:alpine

WORKDIR /go/src/app
COPY . .

RUN apk update && \
    apk upgrade && \
    apk add git
RUN mkdir -p /opt/go
RUN export GOPATH=/opt/go/

RUN go get -d -v ./...
RUN go build -v -o /go/discord-chinchilla-bot ./...

CMD ["/go/discord-chinchilla-bot", "-t", "NDM0MDQ1ODYwNzA4NjE0MTQ0.DbFVyw.BZD_ZWbizE8F7IiwE-oiGXzhGHw"]

