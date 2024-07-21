#!/bin/bash

# Check CPU details
echo "CPU Details:"
lscpu
echo ""

# Check CPU usage percentage
echo "CPU Usage Percentage:"
mpstat | awk '$3 ~ /[0-9.]+/ { print 100 - $13"%"}'
echo ""

# Check RAM details
echo "RAM Details:"
free -h
echo ""

# Check RAM usage percentage
echo "RAM Usage Percentage:"
free | awk '/Mem/ {printf("%.2f%"), $3/$2 * 100.0}'
echo ""

# Check Storage details
echo "Storage Details:"
df -h
echo ""

# Check Disk usage
echo "Disk Usage:"
du -sh /*
echo ""

# Check Disk usage percentage
echo "Disk Usage Percentage:"
df -h | grep -E '^/dev/' | awk '{ print $1 " : " $5 }'
echo ""

# Check Network Interfaces
echo "Network Interfaces:"
ip -br addr
echo ""

# Check Operating System details
echo "Operating System Details:"
lsb_release -a
echo ""

# Check Kernel version
echo "Kernel Version:"
uname -r
echo ""

# Check Uptime
echo "System Uptime:"
uptime -p
echo ""

# Check running processes
echo "Running Processes:"
ps aux --sort=-%mem | head -n 10
echo ""

# Check listening ports
echo "Listening Ports:"
ss -tuln
echo ""

# Check top 5 memory consuming processes
echo "Top 5 Memory Consuming Processes:"
ps aux --sort=-%mem | head -n 6
echo ""

# Check top 5 CPU consuming processes
echo "Top 5 CPU Consuming Processes:"
ps aux --sort=-%cpu | head -n 6
echo ""
