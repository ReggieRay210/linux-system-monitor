#!/bin/bash

REPORT_FILE="$HOME/health_report.log"
THRESHOLD_CPU=80
THRESHOLD_DISK=90

echo "=== System Health Report: $(date) ===" | tee -a $REPORT_FILE

# CPU load (1 min average)
load=$(uptime | awk -F 'load average:' '{print $2}' | cut -d, -f1)
echo "CPU Load (1 min): $load" | tee -a $REPORT_FILE

# Memory Usage
mem=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')
echo "Memory Used: $mem" | tee -a $REPORT_FILE

# Disk Usage (root)
disk=$(df -h / | awk 'NR==2 {print $5}')
echo "Disk usage (root): $disk" | tee -a $REPORT_FILE

# Top 5 processes by CPU
echo "Top 5 CPU processes:" | tee -a $REPORT_FILE
ps aux --sort=-%cpu | head -6 | tee -a $REPORT_FILE

echo "--------------------------------------" >> $REPORT_FILE
echo "Report can be viewed in: $REPORT_FILE"
