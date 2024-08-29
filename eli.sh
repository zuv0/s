#!/bin/bash
VAR="$(echo aHR0cHM6Ly9odWdnaW5nZmFjZS5jby96dXYwL1NEMTc= | base64 --decode)"
git clone $VAR SD
\cp -f ./SD/install_elice.sh "ss.sh"
echo 'please run sh ss.sh ? ?'
sudo apt -y update
sudo apt -y --force-yes install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
