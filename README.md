# 🧬 Human Low-Coverage WGS Variant Calling (SRR062634)
## 📌 Overview

This project performs a complete  Whole Genome Sequencing (WGS) variant calling and functional annotation analysis using the low-coverage human dataset SRR062634 from the 1000 Genomes Project. The workflow includes raw data retrieval, reference genome alignment, duplicate marking, variant calling, variant effect prediction, and variant visualization.
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
flowchart LR

A[📥 Raw FASTQ Files] --> B[🔍 FastQC Quality Control]

B --> C[✂️ Read Processing]

C --> D[🧬 BWA-MEM Alignment]

D --> E[📄 SAM to BAM Conversion]

E --> F[🔃 Sorting & Indexing]

F --> G[🏷️ Add Read Groups<br>Picard]

G --> H[🧹 Mark Duplicates<br>Picard]

H --> I[🧬 GATK HaplotypeCaller]

I --> J[⚙️ Variant Filtering<br>bcftools]

J --> K[📝 VEP Annotation<br>GRCh38]

K --> L[📊 R Analysis]

L --> M[📈 ggplot2 Visualization]

M --> N[📑 Final Report]

style A fill:#dbeafe,stroke:#2563eb,stroke-width:2px
style I fill:#fef3c7,stroke:#d97706,stroke-width:2px
style K fill:#dcfce7,stroke:#16a34a,stroke-width:2px
style M fill:#f3e8ff,stroke:#9333ea,stroke-width:2px
style N fill:#fee2e2,stroke:#dc2626,stroke-width:2px
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

<img src="figures/01_impact_distribution.png" width="600"/>


### Variant Class Distribution

<img src="figures/02_variant_class_distribution.png" width="600"/>


### Top Variant Consequences

<img src="figures/03_top_consequences.png" width="600"/>


### Impact vs Variant Class

<img src="figures/04_impact_vs_class.png" width="600"/>


### Top Genes

<img src="figures/05_top_genes.png" width="600"/>
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
