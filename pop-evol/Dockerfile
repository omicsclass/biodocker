# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="gwas" \
      software.version="20200911" \
      about.summary="population genomics and evolutionary analysis software packages" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,population,evolutionary,resequence"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH=/biosoft/phylip-3.697/exe:$PATH
COPY environment.yml /work
RUN conda env update -f /work/environment.yml && conda clean -a
RUN cd /biosoft/biotools/ && wget https://www.broadinstitute.org/ftp/pub/mpg/haploview/Haploview.jar && chmod a+x Haploview.jar
RUN cd /biosoft/ && wget -O - http://evolution.gs.washington.edu/phylip/download/phylip-3.697.tar.gz |tar zxv && cd phylip-3.697/src/ \
	&& make -f Makefile.unx install 
RUN /biosoft/miniconda/bin/R -e "install.packages('argparse')"

RUN mkdir -p /root/.config/matplotlib
RUN echo "backend : Agg" > /root/.config/matplotlib/matplotlibrc



WORKDIR /work

