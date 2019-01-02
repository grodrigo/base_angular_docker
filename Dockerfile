FROM node:10-alpine
#ENV NODE_ENV production
ENV NODE_ENV development
WORKDIR /usr/src/app
COPY package.json .
RUN yarn global add @angular/cli 
RUN yarn install
COPY . /usr/src/app
RUN ng config --global cli.packageManager yarn
#RUN npm install --production --silent && mv node_modules ../
ENV PATH /usr/src/app/node_modules/.bin:$PATH

