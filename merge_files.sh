#!/bin/bash
cd /data/elmallahlab/ST002/mergedata

for i in $(find /data/elmallahlab/ST002/rawdata -type f -name "*.fastq.gz" |
while read F; do basename $F | rev | cut -c 18- | rev; done | sort | uniq);
do echo "Merging R1"; cat "$i"_L00*_R1.fastq.gz > "$i"_merged_R1.fastq.gz;
echo "Merging R2"; cat "$i"_L00*_R2.fastq.gz > "$i"_merged_R2.fastq.gz; done;
 

