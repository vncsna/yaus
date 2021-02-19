# Choose docker image
FROM node:15-alpine

# Define working directory
WORKDIR /opt/app

# Copy requirements
COPY app/package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY ./app ./

# Expose port
EXPOSE 8080

# Start app
CMD ["npm", "start"]
