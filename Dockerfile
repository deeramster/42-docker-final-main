FROM golang:1.23.1-alpine

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o /ci_cd_sprint12

CMD ["/ci_cd_sprint12"]
