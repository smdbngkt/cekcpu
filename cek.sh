#!/bin/bash

# Check CPU details
echo "CPU Details:"
lscpu
echo ""

# Check RAM details
echo "RAM Details:"
free -h
echo ""

# Check Storage details
echo "Storage Details:"
df -h
echo ""

# Check Disk usage
echo "Disk Usage:"
du -sh /*
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
