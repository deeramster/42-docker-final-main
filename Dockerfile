FROM golang:1.22.7-alpine

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o /my_app

CMD ["/my_app"]
