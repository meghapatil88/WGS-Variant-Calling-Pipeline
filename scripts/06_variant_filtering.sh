#!/bin/bash

echo "Filtering variants"

gatk VariantFiltration \
-R reference/hg38.fa \
-V variants/SRR062634_raw_variants.vcf.gz \
-O variants/SRR062634_filtered_variants.vcf.gz \
--filter-name "LowQual" \
--filter-expression "QUAL < 30"

echo "Filtering completed"
