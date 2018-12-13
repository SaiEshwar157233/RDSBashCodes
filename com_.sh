#!/bin/bash
rm -rf DEEXCPU1.csv DEEXFreeStorage1.csv DEEXFreeableMemory.csv
./eswar.sh >> DEEXCPU1.csv
./FreeStorage.sh >> DEEXFreeStorage1.csv
./FreeableMemory.sh>> DEEXFreeableMemory.csv

