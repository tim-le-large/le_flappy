#Download Node Alpine image
FROM node:17-alpine 

#Setup the working directory
WORKDIR /usr/src/app

#Copy package.json
COPY package.json package-lock.json ./

RUN npm install -g grunt-cli
#Install dependencies
RUN npm install

EXPOSE 8001

#Copy other files and folder to working directory
COPY . .

#Build Angular application in PROD mode
CMD ["grunt", "connect"]

