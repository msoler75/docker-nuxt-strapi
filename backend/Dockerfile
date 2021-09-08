FROM node:15.11.0-alpine3.12

WORKDIR /src

ADD . ./
RUN npm install 
RUN npm run build

# RUN apk add curl
# RUN curl -OL https://raw.githubusercontent.com/mrako/wait-for/master/wait-for && chmod +x wait-for

# expose 1337 on container
EXPOSE 1337

ENV HOST=0.0.0.0

# start the app
CMD [ "npm", "run", "start" ]