#!/bin/bash

# Define the URL for the FastAPI chat endpoint
URL="http://localhost:8000/chat"  # Change to 8000 if you exposed port 8000

# Define the prompt to send
PROMPT='{"prompt": "What is a LLM?"}'

# Make a POST request to the chat endpoint
response=$(curl -X POST "$URL" -H "Content-Type: application/json" -d "$PROMPT")

# Print the response
echo "Response from server:"
echo "$response"
