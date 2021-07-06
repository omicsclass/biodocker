# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="eggNOG-mapper v2:" \
      software="eggNOG-mapper" \
      software.version="20210630" \
      about.summary="functional annotation, orthology assignments, and domain prediction at the metagenomic scale." \
      about.home="www.omicsclass.com" \
      about.documentation="https://github.com/eggnogdb/eggnog-mapper" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8


RUN conda install -y eggnog-mapper=2.1.3 diamond=2.0.9 hmmer &&  conda clean --all --yes
WORKDIR /work

