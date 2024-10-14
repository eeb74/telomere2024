# Telomere specific NGS analyses pipeline
A repository containing a description of the telomere specific analysis pipeline and all the necessary configuration files and example scripts needed to re-capitulate the analyses published in Lynskey ML et al. Cell Reports (2024). The following analyses are intended to pull out telomere repeat motif counts from NGS samples (either ATAC-seq or CUT&RUN for the analyses within the published study but can be applied to any sample NGS reads from other experimental techniques also). For the purpose of the published study, these analyses were used to quantify differences in chromatin accessibility and H3.3 occupancy at telomere locations between cell line conditions from ATAC-seq data or CUT&RUN data, respectively. The analysis pipelines within this repository begin from raw sequencing fastq read files.

# Requirements
* gcc, v8.2.0
* FastQC, v0.11.7
* bowtie2, v2.4.5
* samtools, v1.10
* picard, v2.18.12
* qMotif, v1.2
* TelSeq, v0.0.2
* bedtools, v2.29.0
* deepTools, v3.3.0

# Pipeline workflow
1. fastQC.bash
2. bowtie2.bash
3. picard.bash
4. qMotif.bash
5. TelSeq.bash
6. bam2bed.bash
7. coverageBed.bash
8. samtools_size.bash
9. deeptools.bash

# Software documentation pages
* FastQC (https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
* samtools (http://www.htslib.org/download/)
* bowtie2 (https://bowtie-bio.sourceforge.net/bowtie2/index.shtml)
* Picard (https://broadinstitute.github.io/picard/)
* deepTools (https://deeptools.readthedocs.io/en/develop/index.html)
* bedtools (https://bedtools.readthedocs.io/en/latest/)
* qMotif (https://adamajava.readthedocs.io/en/latest/qmotif/qmotif_1_2/)
* TelSeq (https://github.com/zd1/telseq)

# Acknowledgements
Acknowledgements and gratitude to Hilda Pickett, Michael Lee, Oliver Holmes, and John Pearson for their help with implementing qMotif package code. 

   
