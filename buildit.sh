#!/bin/bash
STR="0-0-0-1"

#rm -Rf ~/.bipcoin

#make it
#cmake .
#make

#archive it
rm -Rf build
mkdir build
mkdir build/bipcoin
cp src/bipcoind build/bipcoin
cp src/connectivity_tool build/bipcoin
cp src/simplewallet build/bipcoin
cp src/walletd build/bipcoin
cd build
tar -cvf bipcoin.linux.x64.v$STR.tar  bipcoin/* 
gzip -9 bipcoin.linux.x64.v$STR.tar

