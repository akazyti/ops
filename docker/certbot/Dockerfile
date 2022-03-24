FROM alpine:latest
LABEL maintainer "Zaspi Softwares <zaspisoft@gmail.com>"

RUN apk update && \
		apk --no-cache \
			add bash certbot

ENTRYPOINT certbot
