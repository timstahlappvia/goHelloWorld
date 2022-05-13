FROM golang:1.18

WORKDIR /app

RUN groupadd --gid 1000 gouser \
    && useradd --uid 1000 --gid 1000 -m gouser

COPY . .
RUN go build -v -o /app/wiki

RUN chown -R gouser:gouser /app \
    && chmod 770 /app \
    && chmod 770 /app/wiki

USER 1000

EXPOSE 8080

CMD ["/app/wiki"]