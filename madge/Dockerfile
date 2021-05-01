FROM node:alpine
RUN apk add graphviz --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main
RUN npm i -g madge
RUN apk add ttf-droid
ADD .madgerc /root
WORKDIR /tmp
ENTRYPOINT ["madge"]
