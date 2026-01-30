library(plyr)
files<-c("Jt_O_F_Big_1ReadsPerGene.out.tab","Jt_O_F_Big_2ReadsPerGene.out.tab","Jt_O_F_Big_3ReadsPerGene.out.tab","Jt_O_F_Sm_1ReadsPerGene.out.tab","Jt_O_F_Sm_2ReadsPerGene.out.tab","Jt_O_F_Sm_3ReadsPerGene.out.tab","Jt_O_F_Sm_4ReadsPerGene.out.tab","Jt_O_M_Big_1ReadsPerGene.out.tab","Jt_O_M_Big_2ReadsPerGene.out.tab","Jt_O_M_Big_3ReadsPerGene.out.tab","Jt_O_M_Big_4ReadsPerGene.out.tab","Jt_O_M_Sm_1ReadsPerGene.out.tab","Jt_O_M_Sm_2ReadsPerGene.out.tab","Jt_O_M_Sm_3ReadsPerGene.out.tab","Jt_P_F_Big_1ReadsPerGene.out.tab","Jt_P_F_Big_2ReadsPerGene.out.tab","Jt_P_F_Big_3ReadsPerGene.out.tab","Jt_P_F_Sm_1ReadsPerGene.out.tab","Jt_P_F_Sm_2ReadsPerGene.out.tab","Jt_P_F_Sm_3ReadsPerGene.out.tab","Jt_P_F_Sm_4ReadsPerGene.out.tab","Jt_P_M_Big_1ReadsPerGene.out.tab","Jt_P_M_Big_2ReadsPerGene.out.tab","Jt_P_M_Big_3ReadsPerGene.out.tab","Jt_P_M_Big_4ReadsPerGene.out.tab","Jt_P_M_Sm_1ReadsPerGene.out.tab","Jt_P_M_Sm_2ReadsPerGene.out.tab","Jt_P_M_Sm_3ReadsPerGene.out.tab","Jt_V_F_Big_1ReadsPerGene.out.tab","Jt_V_F_Big_2ReadsPerGene.out.tab","Jt_V_F_Big_3ReadsPerGene.out.tab","Jt_V_F_Sm_1ReadsPerGene.out.tab","Jt_V_F_Sm_2ReadsPerGene.out.tab","Jt_V_F_Sm_3ReadsPerGene.out.tab","Jt_V_F_Sm_4ReadsPerGene.out.tab","Jt_V_M_Big_1ReadsPerGene.out.tab","Jt_V_M_Big_2ReadsPerGene.out.tab","Jt_V_M_Big_3ReadsPerGene.out.tab","Jt_V_M_Big_4ReadsPerGene.out.tab","Jt_V_M_Sm_1ReadsPerGene.out.tab","Jt_V_M_Sm_2ReadsPerGene.out.tab","Jt_V_M_Sm_3ReadsPerGene.out.tab")
mat = matrix(ncol = 0, nrow = 25907)
df<-data.frame(mat)
print(dim(df))
rownames(df)<-read.delim(files[1])[,1]
for(i in 1:length(files))
        {
       counti<-read.delim(files[i])[,2]
         df<-cbind(df,counti)
        }
print(dim(df))
colnames(df)<-c("ToFb1","ToFb2","ToFb3","ToFs1","ToFs2","ToFs3","ToFs4","ToMb1","ToMb2","ToMb3","ToMb4","ToMs1","ToMs2","ToMs3","TpFb1","TpFb2","TpFb3","TpFs1","TpFs2","TpFs3","TpFs4","TpMb1","TpMb2","TpMb3","TpMb4","TpMs1","TpMs2","TpMs3","TvFb1","TvFb2","TvFb3","TvFs1","TvFs2","TvFs3","TvFs4","TvMb1","TvMb2","TvMb3","TvMb4","TvMs1","TvMs2","TvMs3")
write.csv(df,"JT_full_counts.csv")
quit()
