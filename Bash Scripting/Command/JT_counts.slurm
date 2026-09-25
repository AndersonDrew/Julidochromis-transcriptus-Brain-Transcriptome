#!/bin/bash
#SBATCH -J JTR_tpm
#SBATCH -o R_JTR.out
#SBATCH -e R_JTR.err
#SBATCH -C "avx2"
#SBATCH --mem=250G

module load R
Rscript JT_count.R --no-save
module purge
