# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="0.7.17" \
      software="bwa" \
      software.version="20200316" \
      about.summary="BWA is a software package for mapping low-divergent sequences against a large reference genome, such as the human genome." \
      about.home="www.omicsclass.com" \
      about.documentation="http://bio-bwa.sourceforge.net/" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8


RUN conda install bwa=0.7.17 &&  conda clean --all --yes
WORKDIR /work

