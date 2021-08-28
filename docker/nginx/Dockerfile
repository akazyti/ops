FROM alpine:3.14
RUN apk update && apk add --no-cache nginx

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
