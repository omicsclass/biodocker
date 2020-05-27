# Base image
FROM omicsclass/reseq:latest

################## METADATA ######################
LABEL base.image="omicsclass/reseq:latest" \
      version="v0.0.1" \
      software="reseq" \
      software.version="20200401" \
      about.summary="Bulked segregant analysis (BSA)" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics,resequence,BSA"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

#ENV PATH $PATH

RUN     /usr/bin/R -e "install.packages(c('modeest','rmutil','clue','fBasics','stable','statip'))" && /usr/bin/R -e "devtools::install_github('bmansfeld/QTLseqr',build_opts=c('--no-help', '--no-html'))"

WORKDIR /work

