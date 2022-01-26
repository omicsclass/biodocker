# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.2" \
      software="gwas" \
      software.version="20210911" \
      about.summary="population genomics evolutionary  and gwas analysis software packages" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,population,evolutionary,resequence,GWAS"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH=/biosoft/GAPIT3.0/:/biosoft/angsd:/biosoft/:/biosoft/XPCLR/bin:/biosoft/tassel5:/biosoft/gcta_1.93.2beta:/biosoft/LDBlockShow-1.40/bin:/biosoft/structure_kernel_src:/biosoft/impute_v2.3.2_x86_64_dynamic:/biosoft/phylip-3.697/exe:/biosoft/psmc-0.6.5/utils:/biosoft/psmc-0.6.5:/biosoft/PopLDdecay/bin:/biosoft/easySFS:/biosoft/fsc27_linux64:/biosoft/selscan-linux-1.3.0:/biosoft/sweed:/biosoft/iqtree-2.1.2-Linux/bin/:$PATH
COPY environment.yml /biosoft/environment.yml
RUN conda env update -f /biosoft/environment.yml && conda clean -a

COPY popsoft/* /biosoft/
COPY sweed /biosoft/sweed
COPY PopLDdecay /biosoft/PopLDdecay
COPY easySFS /biosoft/easySFS
RUN  cd /biosoft/ && tar zxvf emmax-intel-binary-20120210.tar.gz \
	&& gunzip gemma-0.98.5-linux-static.gz&& chmod a+x gemma-0.98.5-linux-static && ln -s gemma-0.98.5-linux-static gemma \ 
	&& tar zxvf phylip-3.697.tar.gz  \
	&& cd phylip-3.697/src/ && make -f Makefile.unx install \
	&& cd /biosoft/ && tar zxvf 0.6.5.tar.gz \
	&& cd /biosoft/psmc-0.6.5/utils && make && cd /biosoft/psmc-0.6.5/&& make\
	&& cd /biosoft/ && tar zxvf XPCLR.tar.gz \
	&& cd XPCLR/src && make && make install && cd /biosoft/ && rm -f XPCLR.tar.gz \
	&& cd /biosoft  && sh TASSEL_5_unix.sh -q -dir /biosoft/tassel5 && rm TASSEL_5_unix.sh \
        && cd /biosoft && tar zxvf emmax-beta-07Mar2010.tar.gz   \
	&& tar zxvf impute_v2.3.2_x86_64_dynamic.tgz  \
        && tar zxvf spagedi-1.5d.tar.gz    \
        && cd spagedi-1.5d/build/ && cmake .. && make &&  make install && cd /biosoft && rm -rf spagedi-1.5d \
        && cd PopLDdecay && chmod 755 configure&& ./configure&&  make&&  mv -f PopLDdecay  bin/&& chmod 755 bin/* \
	&& cd /biosoft/ && tar zxvf structure_kernel_source.tar.gz \
	&& cd structure_kernel_src && make \
	&& cd /biosoft/ &&  unzip gcta_1.93.2beta.zip && rm -f gcta_1.93.2beta.zip\
	&& tar zxvf LDBlockShow-1.40.tar.gz  && cd LDBlockShow-1.40/src &&  make && make clean \
	&& cd /biosoft/ \
	&& /biosoft/miniconda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple fastlmm VCF-kit

RUN cd /biosoft/ && cd easySFS && chmod 777 easySFS.py \
	&& cd /biosoft/  \
	&& unzip fsc27_linux64.zip && chmod 755 fsc27_linux64/fsc2702  && rm -f fsc27_linux64.zip \
	&& tar zxvf selscan-linux-1.3.0.tar.gz  \
	&& cd /biosoft/  &&  cd sweed && make -f Makefile.gcc \
	&& cd /biosoft/ && tar zxvf iqtree-2.1.2-Linux.tar.gz \
	&& cd /biosoft/ && tar zxvf modeltest-ng-0.1.7-static.tar.gz && ln -s modeltest-ng-static modeltest-ng \
	&& cd /biosoft/ && tar zxvf angsd.tar.gz && tar zxvf htslib.tar.gz && cd htslib && autoreconf -i  && ./configure    && make && make install \
	&& cd ../angsd && make HTSSRC=../htslib 

RUN     /biosoft/miniconda/bin/R  -e "install.packages(c('BiocManager', 'stringi','compiler','devtools','dplyr','RColorBrewer', 'reshape2','pheatmap','cowplot','R.utils','scatterplot3d','argparse','gridExtra','gtable','label.switching','tidyr','qqman','rworldmap','mrMLM','bigmemory','biganalytics','biglm','plotly','rgl'),dependencies=TRUE)"
#RUN      cd /biosoft/ && tar zxvf vcf2gwas.tar.gz && cd vcf2gwas && python setup.py install && cd /biosoft/ && rm -rf vcf2gwas
RUN  cd /biosoft/ && /biosoft/miniconda/bin/R CMD INSTALL LDheatmap_0.99-8.tar.gz && rm -f *.gz *tgz

COPY GAPIT3.0 /biosoft/GAPIT3.0
RUN yum -y install  gnuplot &&  yum clean all
RUN mkdir -p /root/.config/matplotlib
RUN echo "backend : Agg" > /root/.config/matplotlib/matplotlibrc


COPY welcome.sh  /root/.welcome.sh

WORKDIR /work
# wget https://cran.r-project.org/src/contrib/Archive/LDheatmap/LDheatmap_0.99-4.tar.gz
