FROM golang:1.11

RUN git clone https://github.com/SmartEnergyPlatform/materialized-view.git /go/src/materialized-view

WORKDIR /go/src/materialized-view
COPY ./config.json ./config.json

ENV GO111MODULE=on

RUN go build

EXPOSE 8080

CMD ./materialized-view