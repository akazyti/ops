FROM alpine:latest

RUN apk update && \
	apk add --no-cache \
	tcptraceroute

ENTRYPOINT tcptraceroute

