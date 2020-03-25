# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v3.3.0" \
      software="isoseq3" \
      software.version="20200317" \
      about.summary="pacbio isoseq3" \
      about.home="www.omicsclass.com" \
      about.documentation="https://github.com/PacificBiosciences/IsoSeq_SA3nUP/wiki/Tutorial:-Installing-and-Running-Iso-Seq-3-using-Conda" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8


RUN conda create -y -n anaCogent5.2 python=2.7 && source activate anaCogent5.2 && conda install -y -n anaCogent5.2 biopython \
	&& conda install -y -n anaCogent5.2  -c http://conda.anaconda.org/cgat bx-python \
	&& conda install -y -n anaCogent5.2 isoseq3=3.3.0  \
	&& conda install -y -n anaCogent5.2 pbccs=4.2.0 \
	&& conda install -y -n anaCogent5.2 pbcoretools \
	&& conda install -y -n anaCogent5.2 bamtools \
	&& conda install -y -n anaCogent5.2 pysam \
	&&  conda clean --all --yes \
	&& echo "conda activate anaCogent5.2" >>/biosoft/miniconda/etc/profile.d/conda.sh 
WORKDIR /work

