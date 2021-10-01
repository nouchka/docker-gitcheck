FROM python:alpine
LABEL maintainer="Jean-Avit Promis docker@katagena.com"
LABEL org.label-schema.vcs-url="https://github.com/nouchka/docker-gitcheck"
LABEL version="latest"

# Install requirements installation
RUN apk add --update git && rm -rf /var/cache/apk/* && \
	pip install git+git://github.com/yucer/gitcheck.git@fix_setup_py

VOLUME /files
WORKDIR /files

ENTRYPOINT [ "gitcheck" ]
