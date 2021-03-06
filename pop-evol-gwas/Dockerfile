# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="gwas" \
      software.version="20200911" \
      about.summary="population genomics evolutionary  and gwas analysis software packages" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,population,evolutionary,resequence,GWAS"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH=/biosoft/raxml-ng_v1.0.1:/biosoft/XPCLR/bin:/biosoft/tassel5:/biosoft/gcta_1.93.2beta:/biosoft/LDBlockShow-1.35/bin:/biosoft/structure_kernel_src:/biosoft/impute_v2.3.2_x86_64_dynamic:/biosoft/phylip-3.697/exe:/biosoft/psmc-0.6.5/utils:/biosoft/PopLDdecay/bin:/biosoft/easySFS:/biosoft/fsc26_linux64:/biosoft/selscan-linux-1.3.0:/biosoft/sweed:/biosoft/iqtree-2.0.6-Linux/bin/:$PATH
COPY environment.yml /biosoft/environment.yml
RUN conda env update -f /biosoft/environment.yml && conda clean -a
RUN cd /biosoft/biotools/ && wget https://www.broadinstitute.org/ftp/pub/mpg/haploview/Haploview.jar && chmod a+x Haploview.jar \
	&& wget -O - http://csg.sph.umich.edu//kang/emmax/download/emmax-intel-binary-20120210.tar.gz|tar xzv \
	&& wget https://faculty.washington.edu/browning/beagle/beagle.18May20.d20.jar \
	&& wget https://github.com/genetics-statistics/GEMMA/releases/download/0.98.1/gemma-0.98.1-linux-static.gz \
	&& gunzip gemma-0.98.1-linux-static.gz&& chmod a+x gemma-0.98.1-linux-static && ln -s gemma-0.98.1-linux-static gemma \ 
	&& cd /biosoft/ && wget -O - http://evolution.gs.washington.edu/phylip/download/phylip-3.697.tar.gz |tar zxv \
	&& cd phylip-3.697/src/ && make -f Makefile.unx install \
	&& cd /biosoft/ && wget -O - https://github.com/lh3/psmc/archive/0.6.5.tar.gz|tar zxv \
	&& cd psmc-0.6.5/utils && make \
	&& cd /biosoft/ && wget https://reich.hms.harvard.edu/sites/reich.hms.harvard.edu/files/inline-files/XPCLR.tar \
	&& tar xvf XPCLR.tar && cd XPCLR/src && make && make install && cd /biosoft/ && rm -f XPCLR.tar \
	&& cd /biosoft && wget https://tassel.bitbucket.io/installer/TASSEL_5_unix.sh \
        && sh TASSEL_5_unix.sh -q -dir /biosoft/tassel5 && rm TASSEL_5_unix.sh \
        && cd /biosoft && wget -qO-  http://genetics.cs.ucla.edu/emmax/emmax-beta-07Mar2010.tar.gz  |tar xvz \
	&& wget -qO- https://mathgen.stats.ox.ac.uk/impute/impute_v2.3.2_x86_64_dynamic.tgz |tar xvz \
        && wget -qO- https://github.com/reedacartwright/spagedi/archive/1.5d.tar.gz   |tar xvz \
        && cd spagedi-1.5d/build/ && cmake .. && make &&  make install && cd /biosoft && rm -rf spagedi-1.5d \
	&& git clone https://github.com/BGI-shenzhen/PopLDdecay.git \
        && cd PopLDdecay && chmod 755 configure&& ./configure&&  make&&  mv -f PopLDdecay  bin/&& chmod 755 bin/* \
	&& cd /biosoft/ && wget -O- https://web.stanford.edu/group/pritchardlab/structure_software/release_versions/v2.3.4/structure_kernel_source.tar.gz|tar zxv \
	&& cd structure_kernel_src && make \
	&& cd /biosoft/ && wget https://cnsgenomics.com/software/gcta/bin/gcta_1.93.2beta.zip && unzip gcta_1.93.2beta.zip && rm -f gcta_1.93.2beta.zip\
	&& wget -O - https://github.com/BGI-shenzhen/LDBlockShow/archive/v1.35.tar.gz |tar xzv  && cd LDBlockShow-1.35/src &&  make && make clean \
	&& cd /biosoft/ && mkdir raxml-ng_v1.0.1 && cd raxml-ng_v1.0.1 && wget https://github.com/amkozlov/raxml-ng/releases/download/1.0.1/raxml-ng_v1.0.1_linux_x86_64.zip \
	&& unzip raxml-ng_v1.0.1_linux_x86_64.zip && rm raxml-ng_v1.0.1_linux_x86_64.zip \
	&& /biosoft/miniconda/bin/pip install  fastlmm VCF-kit

RUN cd /biosoft/ && git clone https://github.com/isaacovercast/easySFS.git &&cd easySFS && chmod 777 easySFS.py \
	&& cd /biosoft/ && wget http://cmpg.unibe.ch/software/fastsimcoal2/downloads/fsc26_linux64.zip \
	&& unzip fsc26_linux64.zip && chmod 755 fsc26_linux64/fsc26  && rm -f fsc26_linux64.zip \
	&& wget -O - https://github.com/szpiech/selscan/releases/download/v1.3.0/selscan-linux-1.3.0.tar.gz |tar zxv \
	&& cd /biosoft/  && git clone https://github.com/alachins/sweed.git && cd sweed && make -f Makefile.gcc \
	&& cd /biosoft/ && wget -O - https://github.com/Cibiv/IQ-TREE/releases/download/v2.0.6/iqtree-2.0.6-Linux.tar.gz |tar zxv \
	&& cd /biosoft/biotools && wget -O - https://github.com/ddarriba/modeltest/files/3790700/modeltest-ng-0.1.6-static-linux64.tar.gz |tar zxv && ln -s modeltest-ng-static modeltest-ng

RUN     /biosoft/miniconda/bin/R  -e "install.packages(c('BiocManager', 'stringi','compiler','devtools','dplyr','RColorBrewer', 'reshape2','pheatmap','cowplot','R.utils','scatterplot3d','argparse','gridExtra','gtable','label.switching','tidyr','qqman','rworldmap','mrMLM'),dependencies=TRUE,repos='http://cran.wustl.edu/')"
COPY GAPIT3.0 /biosoft/GAPIT3.0

RUN mkdir -p /root/.config/matplotlib
RUN echo "backend : Agg" > /root/.config/matplotlib/matplotlibrc

WORKDIR /work
# wget https://cran.r-project.org/src/contrib/Archive/LDheatmap/LDheatmap_0.99-4.tar.gz
