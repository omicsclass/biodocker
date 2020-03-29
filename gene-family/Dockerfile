# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="gene-family" \
      software.version="20200324" \
      about.summary="gene family analysis software packages" \
      about.home="www.omicsclass.com" \
      about.documentation="https://www.omicsclass.com/article/525" \
      license="  " \
      about.tags="Genomics,Transcriptomics,General,gene_family"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN 	 mkdir /biosoft/MCScanX && wget http://chibba.pgml.uga.edu/mcscan2/MCScanX.zip -O /biosoft/MCScanX/MCScanX.zip && cd /biosoft/MCScanX \
	&& unzip MCScanX.zip && cd MCScanX && sed -i '1i#include <unistd.h>' msa.h && sed -i '1i#include <unistd.h>' detect_collinear_tandem_arrays.h && sed -i '1i#include <unistd.h>' dissect_multiple_alignment.h \
	&& make && rm -f /biosoft/MCScanX/MCScanX.zip && rm -rf /biosoft/MCScanX/MCScanX/data \
	&& wget https://netcologne.dl.sourceforge.net/project/kakscalculator2/KaKs_Calculator2.0.tar.gz -O /biosoft/KaKs_Calculator2.0.tar.gz \
	&& cd /biosoft/ && tar -zxvf KaKs_Calculator2.0.tar.gz && cd  /biosoft/KaKs_Calculator2.0/src && sed -i '/#include<time.h>/a#include<string.h>' base.h \
	&& make && chmod a+x /biosoft/KaKs_Calculator2.0/src/AXTConvertor /biosoft/KaKs_Calculator2.0/bin/Linux/KaKs_Calculator \
	&& rm -rf /biosoft/KaKs_Calculator2.0.tar.gz /biosoft/KaKs_Calculator2.0/examples /biosoft/KaKs_Calculator2.0/bin/Windows 
	
ENV PATH /biosoft/miniconda/envs/genefamilyenv/bin:/biosoft/MCScanX/MCScanX:/biosoft/KaKs_Calculator2.0/src/:/biosoft/KaKs_Calculator2.0/bin/Linux/:$PATH

RUN	conda update -y -n base -c defaults conda && conda create -y -n genefamilyenv python=2.7 && source activate genefamilyenv && conda install -y -n genefamilyenv jcvi=1.0.5  \
	&& conda install -y  -n genefamilyenv circos=0.69.8 &&  conda install  -n genefamilyenv -y perl-bioperl=1.7.2 \
	&& conda install -y  -n genefamilyenv blast=2.9.0  \
	&& conda install -y  -n genefamilyenv hmmer=3.3 \
	&& conda install -y  -n genefamilyenv clustalw=2.1 \
	&& conda install -y  -n genefamilyenv meme=5.1.0 \
	&& conda install -y  -n genefamilyenv samtools=1.10 \
	&& conda install -y  -n genefamilyenv last=1021 \
	&&  conda clean --all --yes \
	&& echo "conda activate genefamilyenv" >>/biosoft/miniconda/etc/profile.d/conda.sh
WORKDIR /work

