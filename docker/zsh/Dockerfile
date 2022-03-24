FROM alpine:latest

COPY .zshrc /root/.zshrc

RUN apk update && apk add --no-cache \
	shadow zsh && \
	chsh -s /bin/zsh || true

ENV SHELL /usr/bin/zsh

WORKDIR /root

ENTRYPOINT ["/bin/zsh"]
