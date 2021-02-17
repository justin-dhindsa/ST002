#!/bin/bash
#SBATCH --ntasks=12
#SBATCH --mem=64G
#SBATCH --mail-type=END
#SBATCH --mail-user=jd348@duke.edu

cd /data/elmallahlab/ST002/rawdata
module load STAR/2.7.2b-gcb01
for i in *_R1.fastq.gz;
do STAR --quantMode GeneCounts --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate \
 --genomeDir /data/elmallahlab/ST002/STARindex --readFilesIn $i ${i%_R1.fastq.gz}_R2.fastq.gz \
 --runThreadN 12 --outFileNamePrefix /data/elmallahlab/ST002/STARalign/${i%_R1.fastq.gz};
done

