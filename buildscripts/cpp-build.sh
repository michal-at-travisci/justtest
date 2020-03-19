#!/bin/bash

os=$(uname -a | cut -c1-7 | tr '[:upper:]' '[:lower:]' )
echo $os
# build app using Makefile and make binary executable
if [ "$os" == "freebsd" ] 
then
  gmake demo -f ./Makefile && chmod +x ../build/demo 
else 
  make demo && chmod +x ../build/demo 
fi
# run application we've just built
../build/demo
