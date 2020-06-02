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

ENV PATH=/usr/bin:$PATH
RUN   yum -y install epel-release && \
    yum -y install R R-devel && \
    yum -y install pip ant && \
    yum -y remove epel-release && \
    yum clean all
RUN cd /biosoft && git clone git://github.com/qiime/qiime-deploy.git \
	&& git clone git://github.com/qiime/qiime-deploy-conf.git \
	&& cd qiime-deploy/ 
## Required to build the container properly
RUN mkdir -p /root/.config/matplotlib
RUN echo "backend : Agg" > /root/.config/matplotlib/matplotlibrc

	
WORKDIR /work

