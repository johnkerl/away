#!/bin/bash

cp ~/scripts/fundam/* ./bin-general

# cd ~/git/johnkerl/miller
# env GOOS=linux GOARCH=x86_64 go build mlr
# cp the binary to ./bin-general
if [ -f mlr.lnx   ]; then cp mlr.lnx   bin-general/mlr  ; fi
if [ -f lumin.lnx ]; then cp lumin.lnx bin-general/lumin; fi

cd bin-general
ln -f -s /usr/local/bin/python3 python
cd ..
