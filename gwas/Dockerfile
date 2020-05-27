# Base image
FROM omicsclass/reseq:latest

################## METADATA ######################
LABEL base.image="omicsclass/reseq:latest" \
      version="v0.0.1" \
      software="gwas" \
      software.version="20200401" \
      about.summary="Genome-Wide Association Studies analysis software packages" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics,resequence"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

ENV PATH /biosoft/tassel5:$PATH
RUN 	 cd /biosoft && wget https://tassel.bitbucket.io/installer/TASSEL_5_unix.sh \
	&& sh TASSEL_5_unix.sh -q -dir /biosoft/tassel5 && rm TASSEL_5_unix.sh

	
RUN	 conda update -y -n base -c defaults conda 

WORKDIR /work

