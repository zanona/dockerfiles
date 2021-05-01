FROM node:alpine
RUN apk add graphviz --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main
RUN npm i -g madge@^4.0.2
RUN apk add ttf-droid
ADD .madgerc /root

# apply npm + ts patch
ADD madge.diff /root
RUN cd /usr/local/lib && patch -p1 -i /root/madge.diff

ENV PATH="/tmp/node_modules/.bin:${PATH}"
VOLUME /tmp
WORKDIR /tmp
ENTRYPOINT ["madge"]
