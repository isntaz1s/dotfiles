#!/bin/bash
echo -e "\e[1;32m--- Informasi Sistem Termux ---\e[0m"
echo -e "\e[1;34mDevice         :\e[0m $(uname -n)"
echo -e "\e[1;34mKernel         :\e[0m $(uname -r)"
echo -e "\e[1;34mUptime         :\e[0m $(uptime -p)"
echo -e "\e[1;34mRAM            :\e[0m $(free -h | awk '/Mem/ {print $3 " / " $2}')"
echo -e "\e[1;34mStorage        :\e[0m $(df -h ~ | awk '/\/data/ {print $3 " / " $2}')"
echo -e "\e[1;34mIP Address     :\e[0m $(curl -s ifconfig.me)"
