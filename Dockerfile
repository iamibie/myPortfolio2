#  Dockerfile for Node Express Backend

FROM node:latest

# Create App Directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install Dependencies
COPY package*.json ./

RUN npm install --silent

# Copy app source code
COPY . .

# Exports
EXPOSE 8000

CMD ["npm","start", "dev", "nodemon"]