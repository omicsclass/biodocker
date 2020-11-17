# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="ampliseq-q2" \
      software.version="20200401" \
      about.summary="Docker image containing all requirements for ampliseq-q2 qiime2 pipeline"\
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="rDNA,Genomics,Proteomics,Transcriptomics,General,Metabolomics,resequence"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
COPY environment.yml /work
RUN conda env create -f /work/environment.yml && conda clean -a
#ENV PATH /biosoft/miniconda/envs/picrust2/bin:/biosoft/miniconda/envs/ampliseq-q2/bin:$PATH
ENV PATH /biosoft/miniconda/envs/ampliseq-q2/bin:/biosoft/miniconda/envs/picrust2/bin:$PATH
## Required to build the container properly
RUN mkdir -p /root/.config/matplotlib
RUN echo "backend : Agg" > /root/.config/matplotlib/matplotlibrc

#RUN conda create -n picrust2 -c bioconda -c conda-forge -y picrust2=2.3.0_b
RUN conda install -n ampliseq-q2 -c bioconda -c conda-forge -y picrust2  && \
	cd /biosoft && wget  -qO-  https://github.com/gavinmdouglas/q2-picrust2/archive/2019.10_0.tar.gz | tar xvz &&\
	cd q2-picrust2-2019.10_0/ && /biosoft/miniconda/envs/ampliseq-q2/bin/pip install -e . 

RUN  conda install -c conda-forge -c bioconda -c qiime2 -c defaults -y -n ampliseq-q2 xmltodict \
	&& /biosoft/miniconda/envs/ampliseq-q2/bin/pip install git+https://github.com/bokulich-lab/RESCRIPt.git	&& qiime dev refresh-cache
WORKDIR /work

