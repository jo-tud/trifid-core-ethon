FROM node:6.9-onbuild

RUN npm install pm2 -g

ENV TRIFID_CONFIG config.json

CMD pm2-docker /usr/src/app/node_modules/.bin/trifid -- --config $TRIFID_CONFIG

EXPOSE 8080
