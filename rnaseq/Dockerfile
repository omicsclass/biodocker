# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="rnaseq" \
      software.version="20200324" \
      about.summary="rnaseq analysis software packages" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

ENV PATH /biosoft/hisat2-2.1.0:/biosoft/stringtie-2.1.1.Linux_x86_64:~/.aspera/connect/bin/:/biosoft/gffread-0.11.8.Linux_x86_64/:/biosoft/gffcompare-0.11.5.Linux_x86_64/:$PATH
RUN 	 cd /biosoft && wget -qO- https://download.asperasoft.com/download/sw/connect/3.9.9/ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.tar.gz |tar xvz \
	&& chmod +x ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && ./ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh && rm ibm-aspera-connect-3.9.9.177872-linux-g2.12-64.sh \
	&& wget -qO- http://ccb.jhu.edu/software/stringtie/dl/gffread-0.11.8.Linux_x86_64.tar.gz|tar xvz \
	&& wget -qO- http://ccb.jhu.edu/software/stringtie/dl/gffcompare-0.11.5.Linux_x86_64.tar.gz |tar xvz \
	&& wget -qO- http://ccb.jhu.edu/software/stringtie/dl/stringtie-2.1.1.Linux_x86_64.tar.gz |tar zvx \
	&& wget ftp://ftp.ccb.jhu.edu/pub/infphilo/hisat2/downloads/hisat2-2.1.0-Linux_x86_64.zip && unzip hisat2-2.1.0-Linux_x86_64.zip && rm hisat2-2.1.0-Linux_x86_64.zip \
	&& cd /biosoft/biotools && wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/gtfToGenePred && chmod a+x gtfToGenePred \
	&& wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/gff3ToGenePred && chmod a+x gff3ToGenePred 

RUN   yum -y install epel-release && \
    yum -y install R && \
    yum -y remove epel-release && \
    yum clean all
#COPY .Rprofile /root
RUN     R -e "install.packages(c('BiocManager', 'ggplot2','devtools','dplyr','gplots','RColorBrewer', 'getopt','reshape2','pheatmap','cowplot','R.utils'),dependencies=TRUE,repos='http://cran.wustl.edu/')" \
        && R -e "BiocManager::install(c('DESeq2','GenomicRanges','genefilter','ballgown','biomaRt','rhdf5','clusterProfiler','EBSeq','edgeR','topGO','pathview','AnnotationHub','GSEABase','enrichplot'))"
RUN	R -e "BiocManager::install(c('org.Hs.eg.db','org.Mm.eg.db','org.Rn.eg.db','org.Sc.sgd.db','org.Dm.eg.db','org.At.tair.db','org.Dr.eg.db','org.Ce.eg.db','org.Bt.eg.db','org.Gg.eg.db','org.Cf.eg.db','org.Ss.eg.db','org.Mmu.eg.db','org.EcK12.eg.db','org.Xl.eg.db','org.Ag.eg.db','org.Pt.eg.db','org.Pf.plasmo.db','org.EcSakai.eg.db','org.Mxanthus.db'))"
RUN	 echo "alias R=\"/usr/bin/R \"" >> ~/.bashrc \
        && echo "alias Rscript=\"/usr/bin/Rscript \"" >> ~/.bashrc

RUN	 conda update -y -n base -c defaults conda \
	&& conda install -y  samtools=1.10 \
	&& conda install -y  bamtools=2.5.1 \
	&& conda install -y  sra-tools=2.10.3 \
	&& conda install -y  matplotlib \
	&& conda install -y  pandas \
	#&& conda install -y  hisat2=2.2.0 \
	&& conda install -y  rseqc=3.0.1 \
	#&& conda install -y  -c r r-essentials r-base \
	&& conda install -y  htseq=0.11.3 \
	#&& conda install -y  bowtie2=2.3.5.1 \
	#&& conda install -y  bowtie=1.2.3 \
	#&& conda install -y  stringtie=2.1.1 \
	&& conda install -y  fastqc=0.11.9 \
	&& conda install -y  fastp=0.20.0 \
	#&& conda install -y  cutadapt=2.9 \
	#&& conda install -y  trim-galore=0.6.5 \
	#&& conda install -y  gffcompare=0.11.2 \
	#&& conda install -y  gffread=0.11.7 \
	#&& conda install -y  picard=2.22.1 \
	#&& conda install -y  flexbar=3.5.0 \
	#&& conda install -y  regtools=0.5.2 \
	#&& conda install -y  bedops=2.4.37 \
	#&& conda install -y  gffutils=0.10.1 \
	#&& conda install -y  ea-utils=1.1.2.779 \
	#&& conda install -y  ucsc-gff3togenepred=377 \
	#&& conda install -y  ucsc-gtftogenepred=377 \
	#&& conda install -y  ucsc-bedtogenepred=377 \
	#&& conda install -y  trinity=2.9.1 \
	#&& conda install -y  star=2.7.3a \
	#&& conda install -y  rsem=1.3.3 \
	#&& conda install -y  transdecoder=5.5.0 \
	#&& conda install -y  blast=2.9.0 \
	#&& conda install -y  hmmer=3.3 \
	#&& pip install tmhmm.py \
	&& conda clean --all --yes 

COPY welcome.sh  /root/.welcome.sh
WORKDIR /work

