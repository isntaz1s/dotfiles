#!/bin/bash
echo -e "\e[38;2;255;165;0mStarting clean up...\e[0m"

echo -e "\e[38;2;0;128;0mCleaning apt cache...\e[0m"
apt clean
apt autoclean
apt autoremove -y

echo -e "\e[38;2;0;128;0mCleaning folder ~/.cache/* ...\e[0m"
rm -rf ~/.cache/*

echo -e "\e[38;2;0;128;0mCleaning temporary folder...\e[0m"
rm -rf ~/.tmp/*

echo -e "\e[38;2;0;128;0mCleaning log files...\e[0m"
find ~ -type f -name "*.log" -delete

echo -e "\e[38;2;255;165;0mClean up completed!\e[0m"
