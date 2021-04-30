# Base image
#FROM omicsclass/reseq:latest
FROM omicsclass/biocontainer-base:latest
################## METADATA ######################
LABEL base.image="omicsclass/reseq:latest" \
      version="v0.0.1" \
      software="bsaseq" \
      software.version="20200708" \
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
RUN   yum -y install epel-release && \
    yum -y install R R-devel && \
    yum -y remove epel-release && \
    yum clean all
#COPY .Rprofile /root
RUN     R -e "install.packages(c('BiocManager', 'compiler','ggplot2','devtools','dplyr','gplots','RColorBrewer', 'getopt','reshape2','pheatmap','cowplot','R.utils','genetics','gplots','argparse','EMMREML','scatterplot3d','genetics','ape'),dependencies=TRUE,repos='http://cran.wustl.edu/')" \
        && R -e "BiocManager::install(c('GenomicRanges','genefilter','biomaRt','rhdf5','clusterProfiler','AnnotationHub','multtest','snpstats','LDheatmap'))"

RUN     /usr/bin/R -e "install.packages(c('modeest','readr','locfit','rmutil','clue','fBasics','stable','statip'),INSTALL_opts=c('--no-help', '--no-html'))" 

RUN	cd /biosoft && git clone  https://github.com/bmansfeld/QTLseqr.git && /usr/bin/R CMD INSTALL QTLseqr && rm -rf QTLseqr

RUN	conda install -y -n base pandas matplotlib scipy fisher vcftools samtools && conda clean --all --yes

RUN	cd /biosoft && git clone https://github.com/omicsclass/QTL-seq.git && cd QTL-seq && /biosoft/miniconda/bin/pip install -e . \
        && cd /biosoft && git clone https://github.com/omicsclass/MutMap.git && cd MutMap && /biosoft/miniconda/bin/pip install -e . 
COPY welcome.sh  /root/.welcome.sh
WORKDIR /work

