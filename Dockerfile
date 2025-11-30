FROM alpine:latest

LABEL maintainer="glisignoli@gmail.com"

EXPOSE 8080
WORKDIR /app

RUN apk --no-cache -U add python3 && \
    apk upgrade --no-cache -U -a

ENTRYPOINT [ "python3", "-m", "http.server", "8080" ]
