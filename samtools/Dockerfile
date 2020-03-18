# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="1.10" \
      software="samtools" \
      software.version="20200316" \
      about.summary="C++ API & command-line toolkit for working with BAM data" \
      about.home="www.omicsclass.com" \
      about.documentation="https://github.com/samtools/samtools/wiki" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8


RUN conda install samtools=1.10
WORKDIR /work

