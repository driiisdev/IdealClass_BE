#!/bin/bash

# Run tests (replace with your actual test command)
# npm test

# Start the server and check for errors (replace with your start command)
npm run start &
# Start server in background
sleep 5
# Wait for server to start
curl http://localhost:5000/
# Replace PORT with your actual port
# Check for successful response (adjust based on your expected response)
if [[ $? -ne 0 ]]; then
 echo "Server startup failed! Fix errors before pushing."
 exit 1
fi

# Stop the server (optional, adjust based on your needs)
kill %1
exit 0
