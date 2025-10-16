#!/bin/bash

# Install dependencies
npm install

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
  cat > .env << EOL
PORT=3001
DB_USER=ona
DB_HOST=localhost
DB_NAME=onaflix
DB_PASSWORD=ona
DB_PORT=5432
EOL
fi

# Create dist directory if it doesn't exist
mkdir -p dist

# Build TypeScript
npx tsc 