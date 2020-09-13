# Base image
#FROM omicsclass/reseq:latest
FROM omicsclass/biocontainer-base:latest
#FROM omicsclass/pop-evol:latest
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

ENV PATH /biosoft/tassel5:/biosoft/emmax-beta-07Mar2010:$PATH
COPY environment.yml /biosoft/environment.yml
RUN conda env update -f /biosoft/environment.yml && conda clean -a
RUN     /biosoft/miniconda/bin/R  -e "install.packages(c('BiocManager', 'compiler','devtools','dplyr','RColorBrewer', 'reshape2','pheatmap','cowplot','R.utils','scatterplot3d','argparse'),dependencies=TRUE,repos='http://cran.wustl.edu/')" 


RUN 	 cd /biosoft && wget https://tassel.bitbucket.io/installer/TASSEL_5_unix.sh \
	&& sh TASSEL_5_unix.sh -q -dir /biosoft/tassel5 && rm TASSEL_5_unix.sh \
	&& cd /biosoft && wget -qO-  http://genetics.cs.ucla.edu/emmax/emmax-beta-07Mar2010.tar.gz  |tar xvz

COPY GAPIT3.0 /biosoft/GAPIT3.0



WORKDIR /work

