# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.5" \
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
COPY qiime2-2022.8-py38-linux-conda.yml /biosoft
COPY welcome.sh  /root/.welcome.sh
COPY condarc /root/.condarc
RUN conda update -n base -c defaults conda 
RUN conda env create -f /biosoft/qiime2-2022.8-py38-linux-conda.yml && conda clean -a
#ENV PATH /biosoft/miniconda/envs/picrust2/bin:/biosoft/miniconda/envs/ampliseq-q2/bin:$PATH
ENV PATH /biosoft/miniconda/envs/ampliseq-q2/bin:/biosoft/miniconda/envs/picrust2/bin:$PATH
## Required to build the container properly
RUN mkdir -p /root/.config/matplotlib
RUN echo "backend : Agg" > /root/.config/matplotlib/matplotlibrc

#RUN conda install libarchive mamba -n base  
#RUN conda create -n picrust2  -y picrust2=2.5.0
#RUN conda create -n picrust2 -c bioconda -c conda-forge picrust2=2.5.0
COPY v2.5.1.tar.gz /biosoft 
RUN  cd /biosoft && tar xvzf  v2.5.1.tar.gz && cd picrust2-2.5.1/ && conda env create -f picrust2-env.yaml \
  && /biosoft/miniconda/envs/picrust2/bin/pip install --no-deps --editable . \
  && cd /biosoft && rm -rf  /biosoft/v2.5.1.tar.gz 
#RUN conda install q2-picrust2=2019.10  -n ampliseq-q2 -c conda-forge -c bioconda -c gavinmdouglas  -y 
RUN  conda install -c conda-forge -c bioconda -c qiime2 -c defaults -y -n ampliseq-q2  xmltodict \
	&& /biosoft/miniconda/envs/ampliseq-q2/bin/pip install git+https://github.com/bokulich-lab/RESCRIPt.git	&& qiime dev refresh-cache
WORKDIR /work

