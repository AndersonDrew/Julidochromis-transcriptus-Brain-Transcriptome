#!/bin/bash
#SBATCH -J JTR2_krak
#SBATCH -o krkout2_JTR.out
#SBATCH -e krkerr2_JTR.out
#SBATCH --mem=250G

module load kraken
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/10O_R#.fq 10O_R1.fastq 10O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/10P_R#.fq 10P_R1.fastq 10P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/10V_R#.fq 10V_R1.fastq 10V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/11O_R#.fq 11O_R1.fastq 11O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/11P_R#.fq 11P_R1.fastq 11P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/11V_R#.fq 11V_R1.fastq 11V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/12O_R#.fq 12O_R1.fastq 12O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/12P_R#.fq 12P_R1.fastq 12P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/12V_R#.fq 12V_R1.fastq 12V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/13O_R#.fq 13O_R1.fastq 13O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/13P_R#.fq 13P_R1.fastq 13P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/13V_R#.fq 13V_R1.fastq 13V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/14O_R#.fq 14O_R1.fastq 14O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/14P_R#.fq 14P_R1.fastq 14P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/14V_R#.fq 14V_R1.fastq 14V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/1O_R#.fq 1O_R1.fastq 1O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/1P_R#.fq 1P_R1.fastq 1P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/1V_R#.fq 1V_R1.fastq 1V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/2O_R#.fq 2O_R1.fastq 2O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/2P_R#.fq 2P_R1.fastq 2P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/2V_R#.fq 2V_R1.fastq 2V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/3O_R#.fq 3O_R1.fastq 3O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/3P_R#.fq 3P_R1.fastq 3P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/3V_R#.fq 3V_R1.fastq 3V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/4O_R#.fq 4O_R1.fastq 4O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/4P_R#.fq 4P_R1.fastq 4P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/4V_R#.fq 4V_R1.fastq 4V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/5O_R#.fq 5O_R1.fastq 5O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/5P_R#.fq 5P_R1.fastq 5P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/5V_R#.fq 5V_R1.fastq 5V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/6O_R#.fq 6O_R1.fastq 6O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/6P_R#.fq 6P_R1.fastq 6P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/6V_R#.fq 6V_R1.fastq 6V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/7O_R#.fq 7O_R1.fastq 7O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/7P_R#.fq 7P_R1.fastq 7P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/7V_R#.fq 7V_R1.fastq 7V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/8O_R#.fq 8O_R1.fastq 8O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/8P_R#.fq 8P_R1.fastq 8P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/8V_R#.fq 8V_R1.fastq 8V_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/9O_R#.fq 9O_R1.fastq 9O_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/9P_R#.fq 9P_R1.fastq 9P_R2.fastq
kraken2 --db cleanup/ref.db --threads 16 --output cleanup/output --paired --unclassified-out cleanup/9V_R#.fq 9V_R1.fastq 9V_R2.fastq
module purge
