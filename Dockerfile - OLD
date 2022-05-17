FROM golang:1.18

WORKDIR /app

COPY . .
RUN go build -v -o /app/wiki

EXPOSE 8080

CMD ["/app/wiki"]