# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="rnaseq" \
      software.version="20200324" \
      about.summary="rnaseq analysis software packages" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

ENV PATH ~/.aspera/connect/bin/:$PATH
RUN 	 cd /biosoft && wget -qO- https://download.asperasoft.com/download/sw/connect/3.9.9/ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.tar.gz |tar xvz \
	&& chmod +x ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && ./ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && rm ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh 

RUN	 conda update -y -n base -c defaults conda \
	&& conda install -y  samtools=1.10 \
	&& conda install -y  sra-tools=2.10.3 \
	&& conda install -y  hisat2=2.2.0 \
	&& conda install -y  rseqc=3.0.1 \
	&& conda install -y  r=3.6 \
	&& conda install -y  htseq=0.11.3 \
	&& conda install -y  bowtie2=2.3.5.1 \
	&& conda install -y  bowtie=1.2.3 \
	&& conda install -y  stringtie=2.1.1 \
	&& conda install -y  fastqc=0.11.9 \
	&& conda install -y  fastp=0.20.0 \
	&& conda install -y  cutadapt=2.9 \
	&& conda install -y  trim-galore=0.6.5 \
	&& conda install -y  gffcompare=0.11.2 \
	&& conda install -y  picard=2.22.1 \
	&& conda install -y  flexbar=3.5.0 \
	&& conda install -y  cutadapt=2.9 \
	&& conda install -y  regtools=0.5.2 \
	#&& conda install -y  trinity=2.9.1 \
	#&& conda install -y  star=2.7.3a \
	#&& conda install -y  rsem=1.3.3 \
	#&& conda install -y  transdecoder=5.5.0 \
	#&& conda install -y  blast=2.9.0 \
	#&& conda install -y  hmmer=3.3 \
	#&& pip install tmhmm.py \
	&& conda clean --all --yes 

RUN	R -e "install.packages(c('BiocManager', 'devtools','dplyr','gplots','RColorBrewer','tidyverse', 'getopt','reshape2','pheatmap','cowplot'),dependencies=TRUE,repos='http://cran.rstudio.com/')" \
	&& R -e "BiocManager::install(c('DESeq2','GenomicRanges','genefilter','ballgown','biomaRt','rhdf5','clusterProfiler','EBSeq','edgeR','R.utils','topGO','pathview'))" 
WORKDIR /work

