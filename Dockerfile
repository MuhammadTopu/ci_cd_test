# Use official Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app
COPY . .

# Expose the port your app runs on (change if not 3000)
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]