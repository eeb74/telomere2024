#Trim fastq files to 25bp using awk command

awk '{if(NR%4==1){print $1} else{print substr($1, 1, 25)}}' IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_R1.fastq > IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_R1_trim25.fastq

awk '{if(NR%4==1){print $1} else{print substr($1, 1, 25)}}' IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_R2.fastq > IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_R2_trim25.fastq

