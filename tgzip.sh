#!/bin/bash
echo "Testing gzip with $threads CPUs"

zcat /projects/abcd_data/NDARINVD5TNL3PL-inputs.tar.gz > ./subject.tar
/usr/bin/time -f 'time: \t%e realSeconds \t%M peakMem' gzip -v subject.tar
/usr/bin/time -f 'time: \t%e realSeconds \t%M peakMem' gunzip -v subject.tar
rm subject.tar
