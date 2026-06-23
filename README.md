# 🧬 Human Low-Coverage WGS Variant Calling (SRR062634)
## 📌 Overview

This project performs a complete Whole Genome Sequencing analysis pipeline for variant calling and functional annotation using the low-coverage human dataset `SRR062634` from the 1000 Genomes Project. The workflow includes raw data retrieval, reference genome alignment, duplicate marking, variant calling, variant effect prediction, and variant burden visualization.

---

## 📂 Dataset Information

* **Dataset**: SRR062634 (Experiment: SRX025016)
* **Source**: NCBI SRA
* **Organism**: *Homo sapiens* 
* **Study Type**: Whole Genome Sequencing (WGS)
* **Conditions**: Low-coverage Population Profiling (GBR)
* **Samples**: 1 (Cell Line: Coriell HG00096)
* **Sequencing Platform**: Illumina Genome Analyzer II
* **Library Strategy**: WGS (Whole Genome Sequencing)
* **Library Layout**: PAIRED

---

## 🔬 Workflow

```
Raw FASTQ Files
     ↓
FastQC Quality Control
     ↓
Trimmomatic Read Trimming
     ↓
BWA-MEM Alignment
     ↓
SAMtools Sorting & Indexing
     ↓
Picard AddOrReplaceReadGroups
     ↓
Picard MarkDuplicates
     ↓
FreeBayes Variant Calling
     ↓
bcftools Variant Filtering
     ↓
VEP Annotation
     ↓
R Analysis & Visualization
     ↓
Final Results (VCF + CSV + Plots)
```
---

### 🛠️ Tools and Software
| Tool | Purpose |
|---|---|
| Linux | Environment |
| Bash | Pipeline execution |
| sra-tools | Fastq retrieval |
| FastQC | Quality control |
| fastp | Read trimming |
| BWA | Sequence alignment |
| SAMtools | BAM processing |
| Picard | Duplicate marking |
| GATK4 | Variant calling |
| Ensembl VEP | Variant annotation |
| R | Statistical analysis |
| ggplot2 | Plotting |

---

## 📁 Repository Structure
```text
WGS-Variant-Calling-Pipeline/
├── scripts/                
├── R_scripts/              
├── data/                   
├── qc/                     
├── qc_trimmed/             
├── alignment/              
├── results/                
├── annotation/             
├── figures/                
│   ├── 01_impact_distribution.png
│   ├── 02_variant_class_distribution.png
│   ├── 03_top_consequences.png
│   ├── 04_impact_vs_class.png
│   └── 05_top_genes.png
├── report/                 
├── README.md               
└── variant_analysis_report.txt  
```
---

## 🧬 Genomic Variant Analysis

Variant calling was performed using **GATK HaplotypeCaller** and hard-filtered via **VariantFiltration** to isolate high-confidence germline variants across the genome.

---

## 📊 Visualizations

### Figure 1: Variant Impact Classification
![Impact Distribution](figures/01_impact_distribution.png)

**Key Insight:** 99.4% of variants are benign MODIFIER class; only 15 (0.025%) are HIGH-impact variants.

---

### Figure 2: Variant Type Distribution
![Variant Class Distribution](figures/02_variant_class_distribution.png)

**Key Insight:** SNVs dominate (90.1%), with proper representation of indels (7.1%).

---

### Figure 3: Top 10 Variant Consequences
![Top Consequences](figures/03_top_consequences.png)

**Key Insight:** ~81% are non-coding variants (introns, intergenic).

---

### Figure 4: Impact Level by Variant Type
![Impact vs Class](figures/04_impact_vs_class.png)

**Key Insight:** Proper stratification across impact levels shows no systematic biases.

---

### Figure 5: Top 20 Most Affected Genes
![Top Genes](figures/05_top_genes.png)

**Key Insight:** Genes with highest variant burden are typically large genes.

---

## 🧬 Key Skills Demonstrated

- NGS data analysis
- Whole Exome Sequencing workflow
- Variant calling pipeline
- VCF file analysis
- Variant annotation
- Linux command line
- R-based data visualization
---
## 👩‍💻 Author

Megha Patil  
Bioinformatics | NGS Data Analysis
