# Julidochromis-transcriptus-Brain-Transcriptome
Work on publication on cross-sexual transfer of female behavior based on size in biparental unit. 

Brain punch pictures and procedure are avialable upon request

Reads are avialable on NCBI here:
QC_Reads contain quality checks after paired reads are passed through the default fastp pipeline

Cleaned reads were uploaded onto IBest and had the following steps performed: Kraken2 for removal of non-eukaryotic reads, STAR alignment of reads to N_birchirdi, generate a table of read counts for upload to local computer and R work
Bash_Scripting contains both the slurm submissions (Command) and outputs (Output) from these steps. Note: in some cases work with another species, Julidochromis marlieri (JM), is included in the iterative steps.

The read count table is included (JT_full_counts.csv) as well as data table from previous work that links samples in a separate column (hormone_data.csv)

With the above two tables the R markdown will generate the entire work flow that includes analysis and figures used for publication
