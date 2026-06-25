#!/bin/bash

echo "Starting Alignment started"

bowtie2 \
-x reference/hg38 \
-1 data/SRR062634_1.fastq \
-2 data/SRR062634_2.fastq \
-S alignment/sample.sam

echo "SAM to BAM conversion"

samtools view -bS \
alignment/SRR062634.sam \
-o alignment/SRR062634.bam


echo "Sorting BAM"

samtools sort \
alignment/SRR062634.bam \
-o alignment/SRR062634_sorted.bam


echo "Indexing BAM"

samtools index \
alignment/SRR062634_sorted.bam

echo "Alignment completed"
