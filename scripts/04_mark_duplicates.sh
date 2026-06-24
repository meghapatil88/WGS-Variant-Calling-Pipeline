#!/bin/bash

echo "Marking duplicates using Picard"

picard -Xmx16g MarkDuplicates \
    I=SRR062634_sorted_RG.bam \
    O=SRR062634_sorted_RG_dedup.bam \
    M=SRR062634_dedup_metrics.txt \
    REMOVE_DUPLICATES=false \
    ASSUME_SORTED=true

echo "Duplicate marking completed"
