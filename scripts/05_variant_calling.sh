#!/bin/bash

echo "Starting variant calling using GATK HaplotypeCalle"

gatk HaplotypeCaller \
-R reference/hg38.fa \
-I alignment/SRR062634_sorted_RG_dedup.bam\
-O variants/SRR062634_raw_variants.vcf.gz

echo "Variant calling completed"
