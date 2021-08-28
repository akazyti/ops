FROM alpine
WORKDIR /app

RUN apk update && apk add python3

EXPOSE 80
CMD python3 -m http.server 80
