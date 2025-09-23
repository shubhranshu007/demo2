# Use official Node.js LTS (replace 20 with your required version)
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies (only production deps in final image)
RUN npm ci --omit=dev

# Copy source code
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
