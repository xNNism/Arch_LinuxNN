#!/bin/bash

echo "downloading and installing hosts file (fakenews+gambling..."
sleep 2
sudo wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts
sudo rm /etc/hosts
sudo cp $PWD/hosts /etc/hosts

echo "done...setting hostsfile"
sleep 2 

echo "setting .bashrc..."
sleep 1
cp $PWD/.bashrc ~/.bashrc
sudo cp .bashrc /root/.bashrc
echo "done setting .bashrc's"
sleep 2

echo "installing Fonts..."
sleep 1
sudo cp -r $PWD/Fonts/* /usr/share/fonts/
echo "done...setting fonts"
sleep 2 


echo "installing Themes..."
sleep 1
sudo cp -r $PWD/Themes/* /usr/share/themes/
echo "done...installing themes"
sleep 2 

echo "installing Icons..."
sleep 1
sudo cp -r $PWD/Icons/* /usr/share/icons/
echo "done...installing icons"
sleep 2 
