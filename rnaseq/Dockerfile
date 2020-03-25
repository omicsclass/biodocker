# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="rnaseq" \
      software.version="20200324" \
      about.summary="rnaset analysis software packages" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics,gene_family"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

ENV PATH ~/.aspera/connect/bin/:$PATH
RUN 	 cd /biosoft && wget -qO- https://download.asperasoft.com/download/sw/connect/3.9.9/ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.tar.gz |tar xvz \
	&& chmod +x ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && ./ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && rm ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh \
	&& conda update -y -n base -c defaults conda \
	&& conda install -y  samtools=1.10 \
	&& conda install -y  sra-tools=2.10.3 \
	&& conda install -y  hisat2=2.2.0 \
	&& conda install -y  rseqc=3.0.1 \
	&& conda install -y  r=3.6 \
	&& conda install -y  htseq=0.11.3 \
	&& conda install -y  stringtie=2.1.1 \
	&& conda clean --all --yes \
	&& R -e 'install.packages("BiocManager")' \
	&& R -e 'install.packages("tidyverse")' \
	&& R -e 'install.packages("getopt")' \
	&& R -e 'BiocManager::install("DESeq2")' \
	&& R -e 'BiocManager::install("clusterProfiler")' \
	&& R -e 'BiocManager::install("EBSeq")' \
	&& R -e 'BiocManager::install("edgeR")' \
	&& echo "conda activate genefamilyenv" >>/biosoft/miniconda/etc/profile.d/conda.sh
WORKDIR /work

