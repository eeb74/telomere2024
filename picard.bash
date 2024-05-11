#Load picard and other required programs

module load gcc/8.2.0
module load samtools/1.10
module load java/1.8.0_121
module load picard/2.18.12

#Sort sam file and remove PCR duplicate reads

java -Xmx4g -jar /ix1/shainer/picard-tools-2.5.0/picard.jar SortSam INPUT=IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_T2Tbowtieoutput.sam OUTPUT=IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_Picard.bam VALIDATION_STRINGENCY=LENIENT TMP_DIR=/tmp SORT_ORDER=coordinate

java -Xmx4g -jar /ix1/shainer/picard-tools-2.5.0/picard.jar MarkDuplicates INPUT=IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_Picard.bam OUTPUT=IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_Picard2.bam VALIDATION_STRINGENCY=LENIENT TMP_DIR=/tmp METRICS_FILE=dup.txt REMOVE_DUPLICATES=true

samtools view -h -o IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_Picard2.sam IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_Picard2.bam

java -Xmx4g -jar /ix1/shainer/picard-tools-2.5.0/picard.jar SortSam INPUT=IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_Picard2.sam OUTPUT=IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_Picard2_sorted.sam VALIDATION_STRINGENCY=LENIENT TMP_DIR=/tmp SORT_ORDER=coordinate

grep -vwE "(chrM)" IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_Picard2_sorted.sam > IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_nochrM.sam

samtools view -S -t T2Tchrom.sizes.txt -b -o IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_nochrM_sorted.bam IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_nochrM.sam 

#Create bam file index to use for input into qMotif

java -Xmx4g -jar /picard-tools-2.5.0/picard.jar BuildBamIndex I=IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_nochrM_sorted.bam
