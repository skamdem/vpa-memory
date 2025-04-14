#!/bin/bash

# Set the timeout duration (50 seconds)
TIMEOUT_DURATION=50

# Use timeout to limit the loop to the specified duration
timeout "$TIMEOUT_DURATION"s bash -c '
while true; do
    # Make a request to the flask-app-service
    curl -s http://controlplane:31081
done
'

# Print a message when the script ends
echo "Script has completed after $TIMEOUT_DURATION seconds."
