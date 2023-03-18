FROM node:16.17.1-alpine3.15



# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
RUN npm install jest --save-dev --legacy-peer-deps
RUN npm build
RUN npm build
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "yarn", "start" , "test" ]

# This is dummy change for git demo
