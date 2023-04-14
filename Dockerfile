FROM node:17

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install prettier -g

# Install Files
RUN npm install
RUN npm install -g pm2
RUN npm install express --save
RUN npm install dotenv
RUN npm install body-parser

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
