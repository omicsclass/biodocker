# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="singel-cell" \
      software.version="20220126" \
      about.summary="single cell analysis" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,RNAseq,single cell"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

COPY soft/* /biosoft/
COPY environment.yml /biosoft/environment.yml
RUN conda env update -f /biosoft/environment.yml && conda clean -a

RUN cd /biosoft/ && tar zxvf cellranger-6.1.2.tar.gz && tar zxvf STAR-2.7.10a.tar.gz && tar zxvf subread-2.0.3-Linux-x86_64.tar.gz 
#ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

#RUN cd /biosoft/ && mkdir R-v4.1.2 && tar zxvf R-4.1.2.tar.gz && cd R-4.1.2 &&   ./configure --prefix=/biosoft/R-v4.1.2  --with-gnu-ld   --with-cairo -with-jpeglib   --with-ith-readline --with-tcltk --with-blas --with-lapack --enable-R-profiling --enable-memory-profiling --with-pcre1 --enable-R-shlib   --with-x  --with-ssl && make && make install && cd /biosoft/ && rm -rf R-4.1.2

ENV PATH=/biosoft/subread-2.0.3-Linux-x86_64/bin:/biosoft/STAR-2.7.10a/bin/Linux_x86_64_static:/biosoft/cellranger-6.1.2/bin:/biosoft/R-v4.1.2/bin:$PATH

#RUN cd /biosoft/ && /biosoft/R-v4.1.2/bin/Rscript install.pkg.r

RUN /biosoft/miniconda/bin/pip install umi_tools


RUN cd /biosoft/ && rm -rf *gz
COPY welcome.sh  /root/.welcome.sh

WORKDIR /work
# wget https://cran.r-project.org/src/contrib/Archive/LDheatmap/LDheatmap_0.99-4.tar.gz
