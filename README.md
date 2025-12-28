# Immunological Rigidity and Fluctuation Geometry Analysis

## Overview

This repository contains analysis code for the manuscript:

**"The spectrum of immunological rigidity: systemic liquefaction as a physical principle of checkpoint blockade"**

Elkin Navarro Quiroz, Centro de Investigaciones en Ciencias de la Vida, Universidad Simón Bolívar

## Project Description

Checkpoint blockade remains difficult to predict, and most biomarkers quantify static tumor states rather than immune dynamics. This project proposes that immune response is organized in two orthogonal channels:

1. **Mean transcriptional state** - the average expression profile
2. **Fluctuation geometry** - the structured covariance of intrinsic variability

Using longitudinal PBMC single-cell transcriptomes from melanoma patients, we isolate the fluctuation channel and show that it is:
- Strongly structured (rank-1 variance = 33%)
- Incompatible with gene-preserving null models
- Organized into a global low-dimensional mode selectively amplified into modular subspaces

Therapy is associated with a transient high-entropy, low-rigidity fluctuation regime ("liquefaction") characterized by entropic expansion and modular reorganization independent of mean state shifts.

## Data Availability

All datasets analyzed in this study are publicly available from the Gene Expression Omnibus (GEO):
- GSE272993
- GSE115189
- GSE78220

Derived data supporting the findings are provided in the supplementary materials.

## Repository Structure

- `analysis/` - Main analysis scripts
- `data/` - Processed data and metadata
- `figures/` - Figure generation scripts
- `utils/` - Utility functions and helpers

## Requirements

- Python 3.8+
- pandas
- numpy
- scikit-learn
- scipy
- matplotlib
- seaborn
- scanpy (for single-cell analysis)

## Installation

```bash
git clone https://github.com/elkinnavarro-glitch/immunological-rigidity-fluctuation-analysis.git
cd immunological-rigidity-fluctuation-analysis
pip install -r requirements.txt
```

## Usage

Detailed instructions for running the analysis are provided in each script's docstring.

## Citation

If you use this code in your research, please cite:

Navarro Quiroz, E. (2025). The spectrum of immunological rigidity: systemic liquefaction as a physical principle of checkpoint blockade. *Nature*, [details upon publication].

## License

MIT License - see LICENSE file for details

## Contact

Elkin Navarro Quiroz  
Centro de Investigaciones en Ciencias de la Vida  
Universidad Simón Bolívar  
Barranquilla, Colombia  
email: elkin.navarro@unisimon.edu.co
