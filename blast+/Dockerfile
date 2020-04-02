# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="2.9.0" \
      software="blast" \
      software.version="20200331" \
      about.summary="BLAST finds regions of similarity between biological sequences. The program compares nucleotide or protein sequences to sequence databases and calculates the statistical significance." \
      about.home="www.omicsclass.com" \
      about.documentation="https://blast.ncbi.nlm.nih.gov/Blast.cgi" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8


RUN conda install -y  blast=2.9.0 &&  conda clean --all --yes
WORKDIR /work

