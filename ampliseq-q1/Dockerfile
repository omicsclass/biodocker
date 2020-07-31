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

ENV PATH=/biosoft/FLASH-1.2.11-Linux-x86_64:/biosoft/Krona-2.7.1/KronaTools/scripts/:/biosoft/miniconda/envs/qiime1/bin:/biosoft/usearch:/biosoft/clearcut/:$PATH
COPY qiime.conf /biosoft/ 
RUN   yum -y install epel-release && \
    yum -y install R R-devel && \
    yum -y install ant mpich2 mpich2-devel ghc zeromq python-devel freetype freetype-devel\
    	xorg-x11-server-Xorg dejavu* zeromq-devel libxslt mysql mysql-devel libgfortran tcl-devel tk-devel && \
    yum -y remove epel-release && \
    yum clean all

RUN     /usr/bin/R -e "install.packages(c('BiocManager', 'compiler','ggplot2','devtools','dplyr','gplots','RColorBrewer', 'getopt','reshape2','pheatmap','cowplot','R.utils','biom','gplots','ape','scatterplot3d','randomForest','vegan','agricolae','ade4','RJSONIO','Matrix','devtools','argparse','ggtern','reshape'),dependencies=TRUE,repos='http://cran.wustl.edu/')" \
        && /usr/bin/R -e "BiocManager::install(c('metagenomeSeq','DESeq2','RGBL','graph'))"  \
        && /usr/bin/R -e "install.packages('Vennerable', repos='http://R-Forge.R-project.org')"  \
        && cd /biosoft && wget https://cran.r-project.org/src/contrib/Archive/mnormt/mnormt_1.5-7.tar.gz \
        && /usr/bin/R CMD INSTALL mnormt_1.5-7.tar.gz && rm -f mnormt_1.5-7.tar.gz \
        && cd /biosoft &&  wget https://cran.r-project.org/src/contrib/Archive/qiimer/qiimer_0.9.4.tar.gz \
        && cd /biosoft && wget https://cran.r-project.org/src/contrib/Archive/biom/biom_0.3.12.tar.gz \
        && cd /biosoft && wget http://tax4fun.gobics.de/Tax4Fun/Tax4Fun_0.3.1.tar.gz \
        && /usr/bin/R CMD INSTALL qiimer_0.9.4.tar.gz && rm -f qiimer_0.9.4.tar.gz \
        && /usr/bin/R CMD INSTALL biom_0.3.12.tar.gz && rm -f biom_0.3.12.tar.gz \
        && /usr/bin/R CMD INSTALL Tax4Fun_0.3.1.tar.gz && rm -f Tax4Fun_0.3.1.tar.gz \
        && /usr/bin/R -e "library(devtools);install_github('js229/Vennerable');install.packages(c('psych','vcd','Ternary','ggpubr','VennDiagram'),dependencies=TRUE,repos='http://cran.wustl.edu/')"



RUN cd /biosoft && git clone git://github.com/qiime/qiime-deploy.git \
	#&& git clone git://github.com/qiime/qiime-deploy-conf.git \
	&& mkdir -p /biosoft/qiime-1.9.1/qiime_software/ \
	&& git clone https://github.com/ibest/clearcut.git && cd clearcut/ && make \
	&& cd /biosoft/qiime-deploy/ \
	&& /usr/bin/python qiime-deploy.py  -f /biosoft/qiime.conf --force-remove-failed-dirs /biosoft/qiime-1.9.1/qiime_software/ \
	&& echo "source /biosoft/qiime-1.9.1/qiime_software/activate.sh" >>/root/.bashrc \
	&& cd /biosoft && mkdir usearch && cd usearch && wget http://www.drive5.com/downloads/usearch11.0.667_i86linux32.gz \
	&& gunzip usearch11.0.667_i86linux32.gz && ln -s usearch11.0.667_i86linux32 usearch \
	&& chmod a+x usearch11.0.667_i86linux32 \
	&& cd /biosoft && wget -qO- http://ccb.jhu.edu/software/FLASH/FLASH-1.2.11-Linux-x86_64.tar.gz |tar xvz \
	&& wget https://github.com/torognes/vsearch/archive/v2.15.0.tar.gz && tar xzf v2.15.0.tar.gz && cd vsearch-2.15.0 \
	&& ./autogen.sh && ./configure && make && make install && cd /biosoft && rm -rf vsearch-2.15.0 v2.15.0.tar.gz \
	&&  cd /biosoft && wget -qO-  https://github.com/marbl/Krona/archive/v2.7.1.tar.gz  |tar xvz 
COPY uclust /biosoft/usearch
## Required to build the container properly
RUN mkdir -p /root/.config/matplotlib && echo "backend : Agg" > /root/.config/matplotlib/matplotlibrc

RUN conda create -n qiime1 -y python=2.7 \
	&& conda install -y -n base biopython \
	&& conda install -y -n base circos=0.69.8 \
	&& conda install -y -n base perl-bioperl=1.7.2 \
	&& conda install -y -n base fastqc=0.11.9 \
	&& conda install -y -n base fastp=0.20.0 \
	&& conda install -y -n base multiqc=1.9 \
	#&& conda install -n qiime1 -y lefse \
	#&& conda install -n qiime1 -y biopython=1.75 \
	#&& conda install -n base -y koeken \
	&& conda clean --all --yes \
	&& echo "conda activate qiime1" >>/biosoft/miniconda/etc/profile.d/conda.sh \
	&& /biosoft/miniconda/envs/qiime1/bin/pip install  numpy==1.11.1 pandas==0.18.1 scipy==0.18.0 matplotlib==1.5.2 \
	&& /biosoft/miniconda/envs/qiime1/bin/pip install  cogent==1.5.3 \
	&& /biosoft/miniconda/envs/qiime1/bin/pip install  biom-format==2.1.5 \
	&& /biosoft/miniconda/envs/qiime1/bin/pip install  h5py \
	&& /biosoft/miniconda/envs/qiime1/bin/pip install  qiime 
	#&& /biosoft/miniconda/envs/qiime1/bin/pip install  STAMP


WORKDIR /work

