FROM node:20-slim

# Set working directory
WORKDIR /src

# Copy package files
COPY frontend/package*.json .

# Install dependencies with clean install and CI=false to ensure dev dependencies are installed
ENV CI=false
RUN npm ci

# Copy the rest of the frontend code
COPY frontend .

# Expose the port the app runs on
EXPOSE 3000

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]