#!/bin/bash
echo -e "\e[1;33m--- Setup for updating & upgrading package ---\e[0m"
pkg update -y && pkg upgrade -y
echo -e "\e[1;32mAll package updated and upgraded\e[0m"
