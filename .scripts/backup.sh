#!/bin/bash
echo -e "\e[1;33m--- Backup Folder to ZIP ---\e[0m"
read -p "Enter folder path: " folder
read -p "Enter name for ZIP file: " zipname
if [ -d "$folder" ]; then
  zip -r "${zipname}.zip" "$folder"
  echo -e "\e[1;32mBackup success! File saved as ${zipname}.zip\e[0m"
else
  echo -e "\e[1;31mFolder not found!\e[0m"
fi
