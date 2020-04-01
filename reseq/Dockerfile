# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="reseq" \
      software.version="20200401" \
      about.summary="genome resequence analysis software packages" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics,resequence"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

ENV PATH ~/.aspera/connect/bin/:/biosoft/gatk-4.1.6.0:$PATH
RUN 	 cd /biosoft && wget -qO- https://download.asperasoft.com/download/sw/connect/3.9.9/ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.tar.gz |tar xvz \
	&& chmod +x ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && ./ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && rm ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh 
	&& wget https://github.com/broadinstitute/gatk/releases/download/4.1.6.0/gatk-4.1.6.0.zip  -O /biosoft/gatk-4.1.6.0.zip \
	&& cd /biosoft && unzip gatk-4.1.6.0.zip && rm gatk-4.1.6.0.zip 
RUN	 conda update -y -n base -c defaults conda \
	&& conda install -y  circos=0.69.8 \
	&& conda install -y   bwa=0.7.17 \
	&& conda install -y  perl-bioperl=1.7.2 \
	#&& conda install -y  gatk=3.8 \
	&& conda install -y  bcftools=1.10.2 \
	&& conda install -y  vcftools=0.1.16 \
	&& conda install -y  samtools=1.10 \
	&& conda install -y  plink=1.90b6.12 \
	&& conda install -y  sra-tools=2.10.3 \
	&& conda install -y  r=3.6 \
	&& conda install -y  fastqc=0.11.9 \
	&& conda install -y  fastp=0.20.0 \
	&& conda install -y  cutadapt=2.9 \
	&& conda install -y  trim-galore=0.6.5 \
	&& conda install -y  picard=2.22.1 \
	&& conda install -y  flexbar=3.5.0 \
	&& conda install -y  cutadapt=2.9 \
	&& conda clean --all --yes 

RUN	R -e "install.packages(c('BiocManager', 'devtools','dplyr','gplots','RColorBrewer','tidyverse', 'getopt','reshape2','pheatmap','cowplot'),dependencies=TRUE,repos='http://cran.rstudio.com/')" \
	&& R -e "BiocManager::install(c('DESeq2','GenomicRanges','genefilter','ballgown','biomaRt','rhdf5','clusterProfiler','EBSeq','edgeR','R.utils','topGO','pathview'))" 
WORKDIR /work
