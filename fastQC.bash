#Load fastqc
module load fastqc/0.11.7

#Run FastQC analysis for each read pair
fastqc -o /path/to/out-directory/ IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_R1.fastq

fastqc -o /path/to/out-directory/ IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_R2.fastq


