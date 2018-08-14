#!/bin/bash
#####
# UpdatedAt: 2018.08.14
# Version: 0.0.1
#####

echo "Install Script Start..."

# Replace Source
chmod +x ./sources.sh
bash ./sources.sh

# Install Speak IP
chmod +x ./speak_ip.sh
bash ./speak_ip.sh
