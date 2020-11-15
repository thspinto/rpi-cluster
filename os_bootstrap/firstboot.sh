#!/bin/bash
mkdir -p /home/pi/.ssh
source /boot/bootstrap.env

## Get keys and disable
curl "https://github.com/$bootstrap_github_user.keys" > /home/pi/.ssh/authorized_keys
chown pi /home/pi/.ssh/authorized_keys
echo "PasswordAuthentication no" | sudo tee -a /etc/ssh/sshd_config

## Enable SSH
sudo systemctl enable ssh
sudo systemctl start ssh

## Bootstrap hostname
echo $bootstrap_hostname > /etc/hostname
sed -i "s/raspberrypi/$bootstrap_hostname/g" /etc/hosts
hostname $bootstrap_hostname
sudo systemctl restart avahi-daemon.service # to lood the new hostname in mDNS
