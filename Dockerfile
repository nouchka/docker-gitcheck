# hadolint ignore=DL3007
FROM python:alpine
LABEL maintainer="Jean-Avit Promis docker@katagena.com"
LABEL org.label-schema.vcs-url="https://github.com/nouchka/docker-gitcheck"
LABEL version="latest"

# Install requirements installation
# hadolint ignore=DL3018
RUN  adduser -D -u 1000 developer && apk add --no-cache git && \
	pip install --no-cache-dir git+https://github.com/mataneli94/gitcheck.git@master

VOLUME /files
WORKDIR /files

ENTRYPOINT [ "gitcheck" ]
USER developer
