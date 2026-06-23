# 🧬 Human Low-Coverage WGS Variant Calling (SRR062634)
## 📌 Overview

This project performs a complete 'Whole Genome Sequencing' analysis pipeline for variant calling and functional annotation using the low-coverage human dataset `SRR062634` from the 1000 Genomes Project. The workflow includes raw data retrieval, reference genome alignment, duplicate marking, variant calling, variant effect prediction, and variant burden visualization.

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
## 🧬 Workflow

```mermaid
flowchart TD

A[FASTQ Raw Reads] --> B[FastQC Quality Control]

B --> C[BWA-MEM Alignment]

C --> D[SAMtools SAM to BAM]

D --> E[Sorting and Indexing BAM]

E --> F[Picard Add Read Groups]

F --> G[Picard Mark Duplicates]

G --> H[GATK HaplotypeCaller]

H --> I[bcftools Variant Filtering]

I --> J[Ensembl VEP Annotation]

J --> K[R Studio Analysis]

K --> L[Variant Statistics]

L --> M[Visualization Results]


classDef start fill:#dbeafe,stroke:#2563eb,stroke-width:2px;
classDef process fill:#dcfce7,stroke:#16a34a,stroke-width:2px;
classDef analysis fill:#fef3c7,stroke:#d97706,stroke-width:2px;
classDef result fill:#f3e8ff,stroke:#9333ea,stroke-width:2px;


class A start
class B,C,D,E,F,G process
class H,I,J analysis
class K,L,M result
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

## 📊 Visualization Results


### Variant Impact Distribution

<img src="./figures/01_impact_distribution.png" width="700">


### Variant Class Distribution

<img src="./figures/02_variant_class_distribution.png" width="700">


### Top Variant Consequences

<img src="./figures/03_top_consequences.png" width="700">


### Impact vs Variant Class

<img src="./figures/04_impact_vs_class.png" width="700">


### Top Genes

<img src="./figures/05_top_genes.png" width="700">
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
