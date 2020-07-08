# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="ampliseq-q1" \
      software.version="20200401" \
      about.summary="Docker image containing all requirements for ampliseq-q1 pipeline"\
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="rDNA,Genomics,Proteomics,Transcriptomics,General,Metabolomics,resequence"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

ENV PATH=/usr/bin:/biosoft/miniconda/envs/qiime1/bin:/biosoft/usearch:$PATH
COPY qiime.conf /biosoft/ 
RUN   yum -y install epel-release && \
    yum -y install R R-devel && \
    yum -y install ant mpich2 mpich2-devel ghc zeromq python-devel freetype freetype-devel\
    	xorg-x11-server-Xorg dejavu* zeromq-devel libxslt mysql mysql-devel libgfortran tcl-devel tk-devel && \
    yum -y remove epel-release && \
    yum clean all
RUN cd /biosoft && git clone git://github.com/qiime/qiime-deploy.git \
	#&& git clone git://github.com/qiime/qiime-deploy-conf.git \
	&& mkdir -p /biosoft/qiime-1.9.1/qiime_software/ \
	&& cd qiime-deploy/ 
	&& python qiime-deploy.py  -f /biosoft/qiime.conf --force-remove-failed-dirs /biosoft/qiime-1.9.1/qiime_software/ 

RUN cd /biosoft && mkdir usearch && cd usearch && wget http://www.drive5.com/downloads/usearch11.0.667_i86linux32.gz \
	&& gunzip usearch11.0.667_i86linux32.gz && mv usearch11.0.667_i86linux32.gz usearch \
	&& chmod a+x usearch
## Required to build the container properly
RUN mkdir -p /root/.config/matplotlib
RUN echo "backend : Agg" > /root/.config/matplotlib/matplotlibrc

RUN conda create -n qiime1 -y python=2.7 \
	&& conda install -y  -n qiime1 pandas \
	&& conda install -y -n qiime1 numpy \
	&& conda install -y -n qiime1 scipy \
	&& conda install -y -n qiime1 matplotlib \
	&& conda install -y -n qiime1 biopython \
	&& conda install -y -n qiime1 circos=0.69.8 \
	&& conda install -y -n qiime1  bwa=0.7.17 \
	&& conda install -y -n qiime1 perl-bioperl=1.7.2 \
	&& conda install -y -n qiime1 fastqc=0.11.9 \
	&& conda install -y -n qiime1 fastp=0.20.0 \
	&& conda clean --all --yes \
	&& echo "conda activate qiime1" >>/biosoft/miniconda/etc/profile.d/conda.sh \
	&& /biosoft/miniconda/envs/qiime1/bin/pip install -y qiime

RUN     R -e "install.packages(c('BiocManager', 'compiler','ggplot2','devtools','dplyr','gplots','RColorBrewer', 'getopt','reshape2','pheatmap','cowplot','R.utils','biom','gplots','ape','scatterplot3d','randomForest','vegan'),dependencies=TRUE,repos='http://cran.wustl.edu/')" \
        && R -e "BiocManager::install(c('metagenomeSeq','DESeq2'))"

WORKDIR /work

