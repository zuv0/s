#!/bin/bash
VAR="$(echo aHR0cHM6Ly9odWdnaW5nZmFjZS5jby96dXYwL1NEWExSRjExMDAx | base64 --decode)"
cd /workspace
git clone $VAR SD
\cp -f "/workspace/SD/install_rp.sh" "/workspace/ss.sh"
kill -9 $(ps -ef | grep 'relauncher.py' | grep -v 'grep' | awk '{print $2}')
bash /workspace/ss.sh $1 $2 $3 $4
