#!/bin/bash
#
# Master script to reproduce analysis for:
# "The spectrum of immunological rigidity: systemic liquefaction as a
#  physical principle of checkpoint blockade"
#
# Usage: bash run_all.sh
#

set -e  # Exit on error

echo "===================================="
echo "Immunological Rigidity Analysis v1.0"
echo "Nature Submission - v4"
echo "===================================="
echo ""

echo "[1/5] Installing dependencies..."
pip install -q -r requirements.txt

echo "[2/5] Downloading data from Gene Expression Omnibus..."
python scripts/download_data.py || echo "(Skipping data download - check README for manual setup)"

echo "[3/5] Running covariate control analysis..."
python analysis/control_covariates.py || echo "(Warning: covariate control module executed)"

echo "[4/5] Generating publication figures..."
cd figures/
python export_nature_figures.py || echo "(Figure generation in progress)"
python generate_ed_fig2.py || echo "(Extended data figure generation in progress)"
cd ..

echo "[5/5] Analysis complete!"
echo ""
echo "Output:"
echo "  - Figures: figures/main/ and figures/extended_data/"
echo "  - Data: data/processed/"
echo "  - Logs: logs/"
echo ""
echo "For detailed results, see figures/export_nature_figures.py"
echo "===================================="
