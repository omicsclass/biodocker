# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="2.2.26" \
      software="blastall" \
      software.version="20200401" \
      about.summary="BLAST finds regions of similarity between biological sequences. The program compares nucleotide or protein sequences to sequence databases and calculates the statistical significance." \
      about.home="www.omicsclass.com" \
      about.documentation="https://blast.ncbi.nlm.nih.gov/Blast.cgi" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8


RUN  cd /biosoft && wget  -qO- https://ftp.ncbi.nlm.nih.gov/blast/executables/legacy.NOTSUPPORTED/2.2.26/blast-2.2.26-x64-linux.tar.gz  | tar xvz

ENV PATH /biosoft/blast-2.2.26/bin:$PATH

WORKDIR /work

