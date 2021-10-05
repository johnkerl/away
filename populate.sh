#!/bin/bash

cp ~/scripts/fundam/* ./bin-general
cp -r ~/bin/site/*    ./bin-project

# cd ~/git/johnkerl/miller
# env GOOS=linux GOARCH=x86_64 go build mlr
# cp the binary to ./bin-general

cd bin-general
ln -f -s /usr/local/bin/python3 python
cd ..
