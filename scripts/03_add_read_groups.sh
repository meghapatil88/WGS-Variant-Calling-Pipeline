#!/bin/bash

echo "Adding read groups using Picard"

picard -Xmx16g AddOrReplaceReadGroups \
    I=SRR062634_sorted.bam \
    O=SRR062634_sorted_RG.bam \
    RGID=SRR062634 \
    RGLB=WES_lib \
    RGPL=ILLUMINA \
    RGSM=SRR062634 \
    RGPU=flowcell1 \
    SORT_ORDER=coordinate

echo "Read group addition completed"
