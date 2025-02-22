# Use an official Node.js runtime as a base image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if you have one) to the container
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of your application code to the container
COPY . .

# Expose the port that the app will run on
EXPOSE 3000

# Command to run the application
CMD ["node", "patient-service.js"]
