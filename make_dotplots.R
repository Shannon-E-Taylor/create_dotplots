library("seqinr")

numb <- (read.fasta(file="Honours_data/am-numb.txt", seqtype = "DNA", as.string = FALSE))
beebase_scaffold <- read.fasta(file="Honours_data/group1.4.fasta", seqtype = "DNA", as.string = FALSE)
bimp <- read.fasta(file="Honours_data/ncbi_bimp_numb.fasta", seqtype = "DNA", as.string = FALSE)
bterr <- read.fasta(file="Honours_data/ncbi_bterr_numb.fasta", seqtype = "DNA", as.string = FALSE)
am_numb_prot <- read.fasta(file="Honours_data/amnumbprot.fa", seqtype= "AA", as.string=FALSE)
dm_numb_prot <- read.fasta(file="Honours_data/dm-numb-prot.fa", seqtype= "AA", as.string=FALSE)

#set parameters on numb vs numb
dotPlot(numb$`NC_007070.3:c3313175-3252630`, numb$`NC_007070.3:c3313175-3252630`, wsize=500, wstep=400, nmatch=400)


beebase_region <- beebase_scaffold$NW_003377961.1[222845:287156]
#ncbi numb vs beebase scaffold: is all of ncbi numb in beebase?
dotPlot(numb$`NC_007070.3:c3313175-3252630`, beebase_scaffold$NW_003377961.1[222845:287156], wsize=200, wstep=50, nmatch=150)

#dm_numb vs am_numb protein 
dotPlot(am_numb_prot$PREDICTED, dm_numb_prot$`gi|24583045|ref|NP_723460.1|:1-515`, 
        wsize=4, wstep=1, nmatch=3, 
        xlab = "Am_numb protein", ylab = "Dm_numb protein")

#bi_numb vs am_numb gene
dotPlot(numb$`NC_007070.3:c3313175-3252630`, bimp$`gi|348651004|ref|NT_176470.1|:8294-40531`, wsize=10, wstep=5, nmatch=5)
