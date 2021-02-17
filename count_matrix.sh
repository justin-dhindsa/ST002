#!/bin/bash
#SBATCH --mail-type=END
#SBATCH --mail-user=jd348@duke.edu

cd /data/elmallahlab/ST002/STARalign
for i in *ReadsPerGene.out.tab;
do cut -f1,4 $i | grep -v "_" > /data/elmallahlab/ST002/deseq2/counts_4thcol/`basename $i ReadsPerGene.out.tab`_counts.txt;
done
