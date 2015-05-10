
FROM ubuntu:14.04

ENV NODE_ENV production

RUN \
  apt-get -y install curl && \
  curl -sL https://deb.nodesource.com/setup | bash - && \
  apt-get -y install nodejs build-essential

ADD . /src

RUN \
  cd /src && \
  npm install --production

EXPOSE 2368

CMD ["npm", "start"]
