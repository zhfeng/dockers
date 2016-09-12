#!/bin/bash
git config --global user.email "you@example.com"
git config --global user.name  "Your Name"

git clone https://github.com/jbosstm/narayana/
cd narayana && WORKSPACE=`pwd` PROFILE=BLACKTIE ./scripts/hudson/narayana.sh
