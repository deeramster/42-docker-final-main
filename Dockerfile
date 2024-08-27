FROM golang:1.23.0-alpine

WORKDIR /app

COPY go.mod go.sum ./

COPY . .

RUN go mod tidy

RUN go build -o /my_app

CMD ["/my_app"]
