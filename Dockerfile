FROM node:16.13.2-alpine
WORKDIR /node/app
COPY package.json /node/app
COPY package-lock.json /node/app
RUN npm install
COPY . /node/app
EXPOSE 3000
CMD ["npm", "start"]