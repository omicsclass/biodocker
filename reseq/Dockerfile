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

ENV PATH=/biosoft/miniconda/envs/reseq/bin:/biosoft/SURVIVOR-master/Debug/:/biosoft/annovar/:/biosoft/qualimap_v2.2.1:/biosoft/gffread-0.11.8.Linux_x86_64:/biosoft/annovar:~/.aspera/connect/bin/:/biosoft/gatk-4.1.6.0:$PATH
ENV LD_LIBRARY_PATH=/biosoft/miniconda/envs/reseq/lib:/usr/local/lib/:$LD_LIBRARY_PATH


RUN 	 cd /biosoft && wget -qO- https://download.asperasoft.com/download/sw/connect/3.9.9/ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.tar.gz |tar xvz \
	&& chmod +x ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && ./ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && rm ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh \
	&& wget https://github.com/broadinstitute/gatk/releases/download/4.1.6.0/gatk-4.1.6.0.zip  -O /biosoft/gatk-4.1.6.0.zip \
	&& cd /biosoft && unzip gatk-4.1.6.0.zip && rm gatk-4.1.6.0.zip \
	&& cd /biosoft/biotools && wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/gtfToGenePred && chmod a+x gtfToGenePred \
	&& cd /biosoft/ && wget https://bitbucket.org/kokonech/qualimap/downloads/qualimap_v2.2.1.zip \
	&& unzip qualimap_v2.2.1.zip && rm qualimap_v2.2.1.zip \
	&& wget -qO- http://ccb.jhu.edu/software/stringtie/dl/gffread-0.11.8.Linux_x86_64.tar.gz|tar xvz 

COPY annovar /biosoft/annovar 
CPPY e-PCR /biosoft/biotools/
RUN  chmod a+x /biosoft/annovar/* /biosoft/biotools/e-PCR && echo "alias R=\"/usr/bin/R \"" >> ~/.bashrc \
        && echo "alias Rscript=\"/usr/bin/Rscript \"" >> ~/.bashrc
RUN	cd /biosoft && wget https://github.com/fritzsedlazeck/SURVIVOR/archive/master.tar.gz -O SURVIVOR.tar.gz \
	&& tar xzvf SURVIVOR.tar.gz \
	&& cd SURVIVOR-master/Debug/ && make && rm -f /biosoft/SURVIVOR.tar.gz 

RUN   yum -y install epel-release && \
    yum -y install R R-devel && \
    yum -y remove epel-release && \
    yum clean all
#COPY .Rprofile /root
RUN     R -e "install.packages(c('BiocManager', 'compiler','ggplot2','devtools','dplyr','gplots','RColorBrewer', 'getopt','reshape2','pheatmap','cowplot','R.utils','genetics','gplots','emmreml','scatterplot3d','genetics','ape'),dependencies=TRUE,repos='http://cran.wustl.edu/')" \
        && R -e "BiocManager::install(c('GenomicRanges','genefilter','biomaRt','rhdf5','clusterProfiler','AnnotationHub','multtest','snpstats'))"
        RUN     R -e "BiocManager::install(c('org.Hs.eg.db','org.Mm.eg.db','org.At.tair.db','org.Dr.eg.db'))"



RUN	conda create -y -n reseq python=2.7 && source activate reseq \
	&& conda install -y -n reseq root=6.20.0  cnvnator=0.4.1 \
	&& conda install -y -n reseq circos=0.69.8 \
	&& conda install -y -n reseq  bwa=0.7.17 \
	&& conda install -y -n reseq perl-bioperl=1.7.2 \
	&& conda install -y -n reseq bcftools \
	&& conda install -y -n reseq bedtools=2.29.2 \
	&& conda install -y -n reseq vcftools=0.1.16 \
	&& conda install -y  samtools=1.10 \
	&& conda install -y -n reseq plink=1.90b6.12 \
	&& conda install -y  sra-tools \
	&& conda install -y -n reseq fastqc=0.11.9 \
	&& conda install -y -n reseq fastp=0.20.0 \
	&& conda install -y -n reseq picard=2.22.1 \
	#&& conda install -y snpeff=4.5covid19 \
	&& conda install -y -n reseq breakdancer=1.4.5 \
	&& conda install -y -n reseq perl-set-intervaltree=0.12 \
	#&& conda install -y  cnvpytor=1.0b3 \
	&& conda install -y  -n reseq pandas \
	&& conda install -y -n reseq numpy \
	&& conda install -y -n reseq scipy \
	&& conda install -y -n reseq matplotlib \
	&& conda install -y -n reseq primer3 \
	&& conda install -y -n reseq primer3-py \
	&& conda install -y -n reseq biopython \
	#&& conda install -y -n reseq pytools \
	#&& conda install -y r-ggplot2 \
	#&& conda install -y r-getopt \
	#&& conda install -y bioconductor-multtest \
	#&& conda install -y bioconductor-snpstats \
	#&& conda install -y r-scatterplot3d \
	#&& conda install -y r-genetics \
	#&& conda install -y r-ape \
	#&& conda install -y r-genetics \
	#&& conda install -y r-gplots \
	#&& conda install -y r-ldheatmap \
	#&& conda install -y r-compiler \
	#&& conda install -y r-emmreml \
	&& conda clean --all --yes \
	&& echo "conda activate reseq" >>/biosoft/miniconda/etc/profile.d/conda.sh


WORKDIR /work

