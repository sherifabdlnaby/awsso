#!/bin/bash
curl -o- -s https://raw.githubusercontent.com/sherifabdlnaby/awsso/main/awssoswitch > /usr/local/etc/awsso

cat >> ~/.zshrc <<CONFIG

# AWS SSO Util
[ ! -f /usr/local/etc/awsso ] || source /usr/local/etc/awsso

CONFIG

cat >> ~/.bashrc <<CONFIG

# AWS SSO Util
[ ! -f /usr/local/etc/awsso ] || source /usr/local/etc/awsso

CONFIG


printf "Setup Complete \n\n Please also restart your shell ;)"