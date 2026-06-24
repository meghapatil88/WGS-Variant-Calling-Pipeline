#!/bin/bash

echo "Filtering variants using bcftools"

bcftools filter \
    -i 'QUAL>20 & FMT/DP>5' \
    SRR062634_raw_variants.vcf.gz \
    -o SRR062634_filtered_variants.vcf.gz \
    -O z

echo "Indexing filtered VCF"

tabix -p vcf SRR062634_filtered_variants.vcf.gz


echo "Variant filtering completed"
