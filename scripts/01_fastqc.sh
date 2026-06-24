#!/bin/bash

echo "Running Quality Control"

fastqc \
data/SRR062634_1.fastq \
data/SRR062634_2.fastq \
-o qc/

echo "FastQC completed"
