# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="reseq" \
      software.version="20200401" \
      about.summary="genome resequence analysis software packages" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics,resequence"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

ENV PATH=/biosoft:/biosoft/miniconda/envs/reseq/bin:/biosoft/SURVIVOR-1.0.6/Debug:/biosoft/annovar/2018Apr16:/biosoft/qualimap_v2.2.1:/biosoft/gffread-0.11.8.Linux_x86_64:/biosoft/annovar:~/.aspera/connect/bin/:/biosoft/gatk-4.2.3.0:$PATH
ENV LD_LIBRARY_PATH=/biosoft/miniconda/envs/reseq/lib:/usr/local/lib/:/usr/lib:$LD_LIBRARY_PATH


#RUN 	 cd /biosoft && wget -qO- https://download.asperasoft.com/download/sw/connect/3.9.9/ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.tar.gz |tar xvz \
#	&& chmod +x ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && ./ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && rm ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh \
COPY soft/* /biosoft/
RUN cd /biosoft/ && unzip gatk-4.2.3.0.zip && rm gatk-4.2.3.0.zip \
	&& cd /biosoft/ && chmod a+x gtfToGenePred \
	&& cd /biosoft	&& unzip qualimap_v2.2.1.zip && rm qualimap_v2.2.1.zip \
	&& tar zxvf gffread-0.11.8.Linux_x86_64.tar.gz && rm gffread-0.11.8.Linux_x86_64.tar.gz

COPY annovar /biosoft/annovar 
COPY e-PCR /biosoft/biotools/
RUN  chmod a+x /biosoft/annovar/* /biosoft/biotools/e-PCR && echo "alias R=\"/usr/bin/R \"" >> ~/.bashrc \
        && echo "alias Rscript=\"/usr/bin/Rscript \"" >> ~/.bashrc
RUN	cd /biosoft 	&& tar xzvf survivor-1.0.6.tar.gz \
	&& cd SURVIVOR-1.0.6/Debug/ && make && rm -f /biosoft/Ssurvivor-1.0.6.tar.gz

RUN   yum -y install epel-release && \
    yum -y install R R-devel && \
    yum -y remove epel-release && \
    yum clean all
#COPY .Rprofile /root
RUN     R -e "install.packages(c('BiocManager', 'compiler','ggplot2','devtools','dplyr','gplots','RColorBrewer', 'getopt','reshape2','pheatmap','cowplot','R.utils','genetics','gplots','EMMREML','scatterplot3d','genetics','ape'),dependencies=TRUE)" \
        && R -e "BiocManager::install(c('GenomicRanges','genefilter','biomaRt','rhdf5','multtest','snpstats','LDheatmap'))"
#        RUN     R -e "BiocManager::install(c('org.Hs.eg.db','org.Mm.eg.db','org.At.tair.db','org.Dr.eg.db'))"


COPY environment.yml /biosoft/environment.yml
RUN conda env update -f /biosoft/environment.yml && conda clean -a \
	&& echo "conda activate reseq" >>/biosoft/miniconda/etc/profile.d/conda.sh

COPY welcome.sh  /root/.welcome.sh
WORKDIR /work

