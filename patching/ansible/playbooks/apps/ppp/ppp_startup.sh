#!/bin/bash

# Check if the httpd service is already running
if systemctl is-active --quiet httpd; then
  echo "httpd service is already running."
else
  # Start the httpd service
  sudo systemctl start httpd
  
  # Check if the service started successfully
  if systemctl is-active --quiet httpd; then
    echo "httpd service started successfully."
  else
    echo "Failed to start httpd service."
  fi
fi