#!/bin/bash

echo "Starting VEP annotation"

# Activate VEP environment
conda activate vep_x86


# Annotate variants using Ensembl Variant Effect Predictor (VEP)

vep \
-i variants/SRR062634_filtered_variants.vcf.gz \
-o results/test_annotation.txt \
--cache \
--offline \
--assembly GRCh38 \
--everything


echo "VEP annotation completed"
