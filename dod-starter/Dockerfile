FROM alpine

MAINTAINER My Name <email@company.com>

ARG http_proxy
ARG https_proxy
ARG no_proxy

ADD artifacts .

RUN export http_proxy=$http_proxy; export https_proxy=$https_proxy; export no_proxy=$no_proxy; ./setup.sh

CMD ./startup.sh

