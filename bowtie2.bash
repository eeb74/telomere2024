#Load bowtie2 and other programs
module load gcc/8.2.0
module load bowtie2/2.4.5
module load samtools/1.14

#Set reference genome pathway directory and perform alignment with trimmed fastq files
bowtie2 --dovetail -p 12 -q -N 1 -I 10 -X 1000 -x /human/chm13v2.0/chm13v2.0 -1 IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_R1_trim25.fastq -2 IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_R2_trim25.fastq --no-unal -S IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_T2Tbowtieoutput.sam


