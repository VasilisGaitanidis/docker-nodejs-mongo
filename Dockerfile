# Set the base image
FROM node:12

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json & package-lock.json to the workdir
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy app source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start application
CMD ["npm", "start"]