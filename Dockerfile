# Use the official lightweight Node.js 18 image.
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm ci

# Copy the rest of the project files
COPY . .

# Expose the port Next.js runs on
EXPOSE 3000

# Command to run the app in development mode with watch
CMD ["npm", "run", "dev"]