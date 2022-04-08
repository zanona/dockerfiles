FROM debian:stable-slim
RUN apt-get update
# dependencies
RUN apt-get install -y build-essential cmake texinfo python-dev  zlib1g-dev libbz2-dev libgmp3-dev gettext libmpfr-dev libboost-date-time-dev libboost-filesystem-dev libboost-graph-dev libboost-iostreams-dev libboost-python-dev libboost-regex-dev libboost-test-dev doxygen libedit-dev libmpc-dev tzdata
# dev tools
RUN apt-get install -y git vim ninja-build
RUN git config --global pull.rebase true

#FROM alpine:edge
#RUN echo https://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
#RUN apk update
#RUN apk add git boost-dev gmp-dev mpfr-dev utfcpp gettext-dev python2 libedit-dev doxygen graphviz texinfo lcov sloccount
#RUN apk add build-base 
#RUN apk add cmake
#RUN ln -sf /usr/bin/make /usr/bin/gmake
