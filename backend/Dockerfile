FROM node:14-alpine3.14

WORKDIR /src

ADD . ./
RUN npm install 
RUN npm run build

# solo si queremos que funcione docker composer:
RUN apk add curl && curl -OL https://raw.githubusercontent.com/mrako/wait-for/master/wait-for && chmod +x wait-for

# expose 1337 on container
EXPOSE 1337

#
ENV HOST=0.0.0.0

# start the app
CMD [ "npm", "run", "start" ]