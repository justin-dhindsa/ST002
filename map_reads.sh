#!/bin/bash
module load STAR/2.7.2b-gcb01

cd /data/elmallahlab/ST002/rawdatatest

for i in *_R1.fastq.gz;
do STAR --genomeLoad LoadAndKeep --runMode alignReads --readFilesCommand zcat
--outSAMtype BAM SortedByCoordinate --genomeDir /data/elmallahlab/ST002/STARindex
--readFilesIn $i ${i%_R1.fastq.gz}_R2.fastq.gz 
--runThreadN 20 --outFileNamePrefix /data/elmallahlab/ST002/STARaligntest/${i%_R1.fastq.gz};
done

