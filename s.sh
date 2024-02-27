#!/bin/bash
VAR="$(echo aHR0cHM6Ly9odWdnaW5nZmFjZS5jby96dXYwL1NEMTc= | base64 --decode)"
git clone $VAR SD
\cp -f ./SD/install.sh "install.sh"
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sh install.sh
