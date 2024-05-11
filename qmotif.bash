#Load qmotif

module load gcc/8.2.0
module load java/1.8.0_121
module load qmotif/1.2

#Run qMotif

java -Xmx20g -jar $QMOTIF_ROOT/qmotif-1.2.jar -n 8 --bam IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_nochrM_sorted.bam --bai IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_nochrM_sorted.bai --log IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33_bamFile.bam.qmotif.log --loglevel DEBUG -ini ini.qmotif.ini -o IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33.bam.qmotif.iniT2T.xml -o IMR90_ATRX_KO_HIRA_KD_Rep1_CR_H33.qmotif.telomere.iniT2T.bam
