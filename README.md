**OVERVIEW**

------------------------------------------------------------------------

This repository contains all data and processing for the article: "Using the Ancestral Modulation Hypothesis to predict gene expression patterns underlying a cross-sexual transfer of behavior in a biparental cichlid, Julidochromis transcriptus."

DOI:

Authors: Andrew P. Anderson, Helena Dobieka, and Suzy Renn

This study made predictions about gene expression and regulatory patterns using the Ancestral Modulation Hypothesis in a plastic behavior pattern in J. transcriptus. Each prediction was tested using gene transcripts from three brain regions across individuals that were grouped by sex and size relative to their partner. One brain region, the POA, matched predictions made, another region, the Vd, did not. The last brain region, the OT, had ambiguous results. The authors discuss applicability of these findings and using the Ancestral Modulation Hypothesis..

Andrew P. Anderson curated, analyzed, reported, and shared the data. All queries should be directed to him.

**LAYOUT**

------------------------------------------------------------------------

This Readme contains all information on how the authors generated their data for replication as follows:

1.  Sample collection

2.  RNA processing

    a\. Deposit

    b\. Cleanup

    c\. Alignment

    d\. Counts

3.  RWork

    a\. Organization

    b\. Prediction 1

    c\. Prediction 2 and 3

    d\. Prediction 4

4.  Summary of Files

**SAMPLE COLLECTION**

------------------------------------------------------------------------

Hormone and behavioral data are taken from Anderson et al. 2025 (<https://doi.org/10.1016/j.yhbeh.2025.105820>). The data were trimmed to include only individuals used in this study with IDs matching across samples. These data are found in "hormone_data.csv" located in the "Inputs" folder for the Rcode session

Brain dissections and punches for RNA extraction were photographed and available upon request. Manuscript contains information on techniques, extraction protocols, and RNA sequencing

**RNA PROCESSING**

------------------------------------------------------------------------

Note: in some cases work with another species, Julidochromis marlieri (JM), is included in the steps on the IBest cluster. Work with this species is not part of this project.

*Deposit*

Reads are avialable on NCBI here: <https://www.ncbi.nlm.nih.gov/bioproject/PRJNA1417446>

*Cleanup*

Default fastp pipeline was used to generate quality checks on paired reads and outputs are found in "QC_Reads"

Kraken2 was used to isolate eukaryotic reads on the IBest computing cluster using the bash script "krak2_jtr.slurm" which can be found in the "Bash Scripting/Command" folder. Output from command is in the "Bash Scripting/Output" folder in the file "krkerr2_JTR.out". Cleaned reads were saved on IBest

*Alignment*

STAR alignment was used on the cleaned reads with *Neolamprologus birchardi (GCA_000239395.1)* genome used for alignment with the bash script "starwork.slurm", which can be found in the "Bash Scripting/Command" folder. Output from command is in the "Bash Scripting/Output" folder in the file "JTstar.out". Count outputs were saved on IBest

*Counts*

To combine outputs into one data frame, we ran an R code on the IBest cluster "JT_count.R" through the bash script "JT_counts.slurm" which can be found in the "Bash Scripting/Command" folder. Output from command is in the "Bash Scripting/Output" folder in the file "R_JTR.out". The resulting file is "JT_full_counts.csv" which is located in the "Inputs" folder for the Rcode session.

RWORK

------------------------------------------------------------------------

R environment and R markdown are found in the "RProj" folder.

Outputs from the Author's run of the markdown can be found in "Author_Outputs" for comparison to user's run which will be sent to "Outputs" folder

Information on versions and machine used by Author can be found in "Session_Info.txt"

Note: EBSeq and DESeq2 require BioCManager for installation.

*Organization*

First block of R code are for importing data from the "Inputs" folder (see "RNA Processing-Counts" and "Sample Collection" sections) and create user-friendly names for gene identifiers for Predictions 2-4.

Blocks 2-9 are for determining outliers, removing genes with low reads, and getting normalized read values for Prediction 4

Block 10 reports number of reads kept for analysis in Prediction one

*Prediction 1*

Prediction that the majority of differential expression patterns will be by size than any other grouping. Test in all three brain regions using EBSeq

Block 11 is the EBSeq analysis and generates a table that shows groupings, counts, and percentages of genes in each grouping by brain region. This table is modified into Table 1 in the manuscript by adding descriptions to groupings

Block 12 generates the Posterior Probability heatmaps (Figure 2 and supplemental 3 and 4) for six of the most relevant groupings. These figures were not further processed

Block 13 generates gene lists for each of the six most relevant groupings for later GO analysis. This GO analysis was not done in R. Instead gene lists were copied in the ShinyGO0.86 website using parameters described in manuscript and outputs were saved into "GO Results" which were combined into Supplemental 2

*Prediction 2 and 3*

Prediction that genes associated with the androgen pathway should be upregulated in larger females

Block 14 is the EBSeq analysis for each gene region. Outputs for which genes matched which pattern are generated in the R run with no specific output.

Block 15 generates the Posterior Probability heatmap for these genes (Figure 3 in "Outputs"). Z-scores are calculated and generated for each grouping in each brain region and outputed as a table "zscoresforFig3". Figure3 output has relevant scores overlayed using Powerpoint to generate new Figure 3

*Prediction 4*

Prediction that behaviors will be regulated by androgen pathways

Block 16 combines normalized read counts from Blocks 2-9 of just the target genes and hormone/behavior data into one dataframe for each region

Block 17 uses the OT data to generate Figure 1 since OT has no outliers removed

Blocks 18-26 PATH analysis for each brain region and each behavior. Original model run and tested against Fisher's C. If model not good enough, find which connections can be added. Add those connections into new model and test again. Once model passes fit test. Export the data to "Inputs" in format "PATH_REGION_behavior.csv". All values not related to behavior are shared by region (e.g. coefficient of AR\~T is same for all three). All values are combined in Supplemental 4. Coefficients were converted to line widths and significant connects to make Figure 4 for the POA using powerpoint.

Blocks 27-29 PATH analysis for the POA after removing larger female samples. This was in response to reviewer concern of one group affecting path analysis. Same technique and outputs as before. Added to Supplemental 1 and asterisks showing connections lost on Figure 4.

**SUMMARY**

------------------------------------------------------------------------

"RProj" contains are R coding inputs and outputs and the markdown file

"FIGURES" contains finalized figures for use in manuscript

"GO_Results" contains outputs from ShinyGO0.86 downloaded and compiled into Supplemental Figure

"Bash Scripting" contains bash coding and outputs using the IBest computing cluster

"QC_Reads" are .html reports from fastp processing of reads
