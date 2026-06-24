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


### Variant Impact Classification

<img width="2400" height="1500" alt="Image" src="https://github.com/user-attachments/assets/02ea6bd5-f1c8-4e83-913c-d5ac25f51d22" />

---

### Variant Type Distribution

<img width="2400" height="1500" alt="Image" src="https://github.com/user-attachments/assets/5e9db937-d36e-4cf7-8815-af6c79f4b449" />

---

### Top Variant Consequences

<img width="3000" height="1800" alt="Image" src="https://github.com/user-attachments/assets/4ba5ce3a-a0b6-40c4-acc5-b1da78d3965c" />

---

### Impact Level by Variant Type

<img width="2400" height="1500" alt="Image" src="https://github.com/user-attachments/assets/e5c65393-b9a5-4abf-9e94-87f3b53c477f" />

---

### Top Genes

<img width="3000" height="2100" alt="Image" src="https://github.com/user-attachments/assets/4dc2c293-9b2c-4dee-87dc-a99c63a8b2c6" />

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
