# Use an official Node.js runtime as the base image
FROM node:latest

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy application source code to the working directory
COPY . .

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["node", "app.js"]
