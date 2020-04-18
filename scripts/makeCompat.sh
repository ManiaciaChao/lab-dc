#! /bin/bash
file=compat_$1
cp $1 file
./noTriStateInput.sh file
./removeUnsolvedLibs.sh file

