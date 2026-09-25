#!/bin/bash
#SBATCH -J JT_star
#SBATCH -o JTstar.out
#SBATCH -e JTstar.err
#SBATCH --mem=500G

module load star

STAR --runThreadN 16 --runMode genomeGenerate --genomeDir refdir --genomeFastaFiles Nbri.fna --sjdbGTFfile genomic.gtf --sjdbOverhang 99 --genomeSAindexNbases 13
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/1V_R_1.fq ~/JT_Reads/cleanup/1V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_M_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/2V_R_1.fq ~/JT_Reads/cleanup/2V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_F_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/3V_R_1.fq ~/JT_Reads/cleanup/3V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_M_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/4V_R_1.fq ~/JT_Reads/cleanup/4V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_F_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/5V_R_1.fq ~/JT_Reads/cleanup/5V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_F_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/6V_R_1.fq ~/JT_Reads/cleanup/6V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_M_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/7V_R_1.fq ~/JT_Reads/cleanup/7V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_F_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/8V_R_1.fq ~/JT_Reads/cleanup/8V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_M_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/9V_R_1.fq ~/JT_Reads/cleanup/9V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_M_Big_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/10V_R_1.fq ~/JT_Reads/cleanup/10V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_F_Big_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/11V_R_1.fq ~/JT_Reads/cleanup/11V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_M_Sm_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/12V_R_1.fq ~/JT_Reads/cleanup/12V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_F_Sm_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/13V_R_1.fq ~/JT_Reads/cleanup/13V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_F_Sm_4
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/14V_R_1.fq ~/JT_Reads/cleanup/14V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_V_M_Big_4
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/15V_R_1.fq ~/JM_Reads/cleanup/15V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_V_M_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/16V_R_1.fq ~/JM_Reads/cleanup/16V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_V_F_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/17V_R_1.fq ~/JM_Reads/cleanup/17V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_V_M_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/18V_R_1.fq ~/JM_Reads/cleanup/18V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_V_F_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/19V_R_1.fq ~/JM_Reads/cleanup/19V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_V_M_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/20V_R_1.fq ~/JM_Reads/cleanup/20V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_V_M_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/22V_R_1.fq ~/JM_Reads/cleanup/22V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_V_F_Big_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/24V_R_1.fq ~/JM_Reads/cleanup/24V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_V_F_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/25V_R_1.fq ~/JM_Reads/cleanup/25V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_V_F_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/26V_R_1.fq ~/JM_Reads/cleanup/26V_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_V_F_Sm_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/1O_R_1.fq ~/JT_Reads/cleanup/1O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_M_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/2O_R_1.fq ~/JT_Reads/cleanup/2O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_F_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/3O_R_1.fq ~/JT_Reads/cleanup/3O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_M_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/4O_R_1.fq ~/JT_Reads/cleanup/4O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_F_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/5O_R_1.fq ~/JT_Reads/cleanup/5O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_F_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/6O_R_1.fq ~/JT_Reads/cleanup/6O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_M_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/7O_R_1.fq ~/JT_Reads/cleanup/7O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_F_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/8O_R_1.fq ~/JT_Reads/cleanup/8O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_M_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/9O_R_1.fq ~/JT_Reads/cleanup/9O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_M_Big_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/10O_R_1.fq ~/JT_Reads/cleanup/10O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_F_Big_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/11O_R_1.fq ~/JT_Reads/cleanup/11O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_M_Sm_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/12O_R_1.fq ~/JT_Reads/cleanup/12O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_F_Sm_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/13O_R_1.fq ~/JT_Reads/cleanup/13O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_F_Sm_4
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/14O_R_1.fq ~/JT_Reads/cleanup/14O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_O_M_Big_4
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/15O_R_1.fq ~/JM_Reads/cleanup/15O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_O_M_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/16O_R_1.fq ~/JM_Reads/cleanup/16O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_O_F_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/17O_R_1.fq ~/JM_Reads/cleanup/17O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_O_M_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/18O_R_1.fq ~/JM_Reads/cleanup/18O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_O_F_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/19O_R_1.fq ~/JM_Reads/cleanup/19O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_O_M_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/20O_R_1.fq ~/JM_Reads/cleanup/20O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_O_M_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/22O_R_1.fq ~/JM_Reads/cleanup/22O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_O_F_Big_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/24O_R_1.fq ~/JM_Reads/cleanup/24O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_O_F_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/25O_R_1.fq ~/JM_Reads/cleanup/25O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_O_F_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/26O_R_1.fq ~/JM_Reads/cleanup/26O_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_O_F_Sm_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/1P_R_1.fq ~/JT_Reads/cleanup/1P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_M_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/2P_R_1.fq ~/JT_Reads/cleanup/2P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_F_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/3P_R_1.fq ~/JT_Reads/cleanup/3P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_M_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/4P_R_1.fq ~/JT_Reads/cleanup/4P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_F_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/5P_R_1.fq ~/JT_Reads/cleanup/5P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_F_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/6P_R_1.fq ~/JT_Reads/cleanup/6P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_M_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/7P_R_1.fq ~/JT_Reads/cleanup/7P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_F_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/8P_R_1.fq ~/JT_Reads/cleanup/8P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_M_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/9P_R_1.fq ~/JT_Reads/cleanup/9P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_M_Big_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/10P_R_1.fq ~/JT_Reads/cleanup/10P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_F_Big_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/11P_R_1.fq ~/JT_Reads/cleanup/11P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_M_Sm_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/12P_R_1.fq ~/JT_Reads/cleanup/12P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_F_Sm_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/13P_R_1.fq ~/JT_Reads/cleanup/13P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_F_Sm_4
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JT_Reads/cleanup/14P_R_1.fq ~/JT_Reads/cleanup/14P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jt_P_M_Big_4
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/15P_R_1.fq ~/JM_Reads/cleanup/15P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_P_M_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/16P_R_1.fq ~/JM_Reads/cleanup/16P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_P_F_Sm_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/17P_R_1.fq ~/JM_Reads/cleanup/17P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_P_M_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/18P_R_1.fq ~/JM_Reads/cleanup/18P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_P_F_Big_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/19P_R_1.fq ~/JM_Reads/cleanup/19P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_P_M_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/20P_R_1.fq ~/JM_Reads/cleanup/20P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_P_M_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/22P_R_1.fq ~/JM_Reads/cleanup/22P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_P_F_Big_3
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/24P_R_1.fq ~/JM_Reads/cleanup/24P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_P_F_Big_1
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/25P_R_1.fq ~/JM_Reads/cleanup/25P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_P_F_Sm_2
STAR --runThreadN 16 --genomeDir refdir --readFilesIn ~/JM_Reads/cleanup/26P_R_1.fq ~/JM_Reads/cleanup/26P_R_2.fq --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts --outFileNamePrefix aligned/Jm_P_F_Sm_3


module purge
