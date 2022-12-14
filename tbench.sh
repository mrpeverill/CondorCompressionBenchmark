#!/bin/bash

tar -xzf program.tar.gz

codec=$1
opts=$2
threads=$3

echo "Testing $codec at $opts with $threads CPUs"

if [ $opts == "x" ]; then
    popts=""
else
    popts=",$opts"
fi

echo "popts is $popts"

zcat /projects/abcd_data/NDARINVD5TNL3PL-inputs.tar.gz > ./subject.tar
TurboBench/turbobench -e$codec$popts subject.tar
TurboBench/turbobench -p7 subject.tar.tbb
mv subject.tar.tbb turbobench_${codec}_level${opts}_${threads}core.tbb
mv subject.tar.tsv turbobench_${codec}_level${opts}_${threads}core.csv 
