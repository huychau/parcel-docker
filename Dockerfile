FROM node:10.16.0
ENV CHOKIDAR_USEPOLLING=1

RUN npm install -g parcel-bundler

ADD . /code
WORKDIR /code

EXPOSE 1234

ENTRYPOINT [ "npm" ]
