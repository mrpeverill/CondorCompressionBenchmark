#!/bin/bash
echo "Testing gzip with $threads CPUs"

zcat /projects/abcd_data/NDARINVD5TNL3PL-inputs.tar.gz > ./subject.tar
time gzip -v subject.tar
time gunzip -v subject.tar
rm subject.tar
