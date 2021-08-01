#!/bin/bash

# Check system resources

echo "Memory:"
/usr/bin/free -h
echo "Disk Use:"
/usr/bin/df -h
echo "Uptime:"
/usr/bin/uptime

