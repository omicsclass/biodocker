# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="single-cell" \
      software.version="20220519" \
      about.summary="Docker image containing single cell"\
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="rDNA,Genomics,Proteomics,Transcriptomics,General,Metabolomics,resequence"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

ENV PATH=/share/work/biosoft/python/Python-v3.8.12/bin:/biosoft/miniconda/bin/:/usr/lib/rstudio-server/bin/:/share/work/biosoft/HISAT/hisat2-2.1.0/:/share/work/biosoft/jellyfish/jellyfish-v2.2.6/bin/:/share/work/biosoft/salmon/salmon-0.11.2/bin/:/share/work/biosoft/python/Python-v3.8.12/bin:/share/work/biosoft/muscle/muscle:/share/work/biosoft/SNPhylo/:/share/work/biosoft/velvet/velvet_1.2.10:/share/work/biosoft/VelvetOptimiser/VelvetOptimiser-master/:/share/work/biosoft/bcftools/bcftools-v1.3/bin/:/share/work/biosoft/samtools/htslib/:/share/work/biosoft/jellyfish/jellyfish-v2.2.6/bin:/share/work/biosoft/EIGENSOFT/EIG6.0.1/bin/:/share/work/biosoft/rdpclassifier-2.2-release/:/share/work/biosoft/faststructer/fastStructure/:/share/work/biosoft/admixture/admixture_linux-1.3.0/:/share/work/biosoft/blat/:/share/work/biosoft/megahit/megahit-master/:/share/work/biosoft/Trimmomatic/Trimmomatic-0.35/:/share/work/biosoft/TransDecoder/TransDecoder-3.0.0/:/share/work/biosoft/trinity/trinityrnaseq-2.2.0/:/share/work/biosoft/kmergenie/kmergenie-1.6982/:/share/work/biosoft/kraken/kraken-v0.10.5/:/share/work/biosoft/fastx_toolkit/v0.0.13/:/share/work/biosoft/FLASH/FLASH-1.2.11/:/share/work/biosoft/MISA/:/share/work/biosoft/LDhot/LDhot-master/:/share/work/biosoft/FastQC/:/share/work/biosoft/blast/blast-2.2.26/bin/:/share/work/biosoft/blast/ncbi-blast-2.4.0+/bin/:/share/work/biosoft/GATK/3.6/:/share/work/biosoft/diamond/diamond_v0.8.15.77/:/share/work/biosoft/gcta/:/share/work/biosoft/cdhit/cdhit-4.6.4/:/share/work/biosoft/tgicl/TGICL-2.1/bin/:/share/work/biosoft/kallisto/kallisto_linux-v0.42.5/:/share/work/biosoft/annovar2016_06_24/annovar/:/share/work/biosoft/java/jdk1.8.0_161/bin/:/share/work/biosoft/plink/plink_v1.9/:/share/work/biosoft/bamtools/bamtools-master/bin/:/share/work/biosoft/fastuniq/FastUniq/:/share/work/biosoft/bedtools/bedtools2-v2.25.0/bin/:/share/work/biosoft/usearch/usearch:/share/work/biosoft/Beagle/:/share/work/biosoft/picard/picard-tools-2.5.0/:/share/work/biosoft/bcftools/bcftools-v1.3/bin:/share/work/biosoft/muscle/muscle_v3.8.31/:/share/work/biosoft/vcftools/latest/bin/:/share/work/biosoft/bwa/bwa_0.7.13/:/share/work/biosoft/python/Python2/bin/:/share/work/biosoft/cellranger/cellranger-7.0.0/:/share/work/biosoft/stacks/latest/bin/:/share/work/biosoft/hdf5/hdf5lib-1.10.5/bin:/share/work/biosoft/fasta/latest/bin/:/share/work/biosoft/pandoc/pandoc-2.7.2/bin/:/share/work/biosoft/kcUID/0.1.0/:/share/work/biosoft/mummer/MUMmer3.23/:/share/work/biosoft/tools/bin/:/share/work/biosoft/pblat/pblat2.0/:/share/work/biosoft/bin/:/share/work/biosoft/augustus/augustus-v3.3/scripts/:/share/work/biosoft/bamtools/bamtools-v2.4.1/bin/:/share/work/biosoft/augustus/augustus-v3.3/bin/:/share/work/biosoft/STAR/STAR-2.5.3a/bin/Linux_x86_64/:/share/work/biosoft/ea-utils/bin:/share/work/biosoft/tools/:/share/work/biosoft/ViennaRNA/ViennaRNA-2.2.7/bin/:/share/work/biosoft/miRDeep2/randfold-2.0.1-a7feeeaeba2afe567dbd061b9f4965646386bc98:/share/work/biosoft/homer/bin/:/share/work/biosoft/samtools/samtools-v1.9/bin:/share/work/biosoft/hmmer/hmmer-3.1b2/bin/:/share/work/biosoft/hmmer/hmmer-2.3.2/squid:/share/work/biosoft/sratoolkit/latest/bin/:/share/work/biosoft/blast/ncbi-blast-2.3.0+/bin/:/share/work/biosoft/StringTie/stringtie-1.2.2.Linux_x86_64/:/share/work/biosoft/HISAT/hisat2-2.0.1-beta/:/share/work/biosoft/bamtools/bamtools-master/bin/bamtools:/share/work/biosoft/java/jdk1.8.0_161/bin/:/share/work/biosoft/R/R-v4.0.3/bin/:/share/work/biosoft/bedtools/bedtools2-2.27.1/bin:/share/work/biosoft/perl/perl-5.22.1/bin/:/share/work/biosoft/bowtie/bowtie-1.1.2/:/share/work/biosoft/bowtie2/bowtie2-2.2.7/:/share/work/biosoft/cufflinks/cufflinks-2.2.1/:/opt/openmpi/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/ganglia/bin:/opt/ganglia/sbin:/opt/pdsh/bin:/opt/rocks/bin:/opt/rocks/sbin:/opt/condor/bin:/opt/condor/sbin:/opt/gridengine/bin/lx-amd64:/share/work/biosoft/conda/Miniconda3.8/envs/qiime2-2020.8/bin/:/home/huangls/bin:/share/work/biosoft/miRDeep2/latest/bin/
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/share/work/biosoft/cuda/cuda-11.7.0/lib64/:/share/work/biosoft/Proj/proj-v6.1.1/lib:/share/work/biosoft/gcc/gcc-v6.4.0/lib64/:/usr/lib:/usr/lib64:/share/work/biosoft/bamtools/bamtools-v2.4.0/lib/:/share/work/biosoft/gcc/gcc-v6.4.0/lib64/:/share/work/biosoft/gcc/gcc-v6.4.0/lib/:/share/work/biosoft/boost/boost.1.64/lib/:/share/work/biosoft/lib/atlas/:/share/work/biosoft/lib:/share/work/biosoft/Root/root/lib/:/share/work/biosoft/gsl/gsl-2.1/lib/:/share/work/biosoft/gcc/gcc-v4.7.3/lib64/:/share/work/biosoft/python/Python-v3.8.12/lib:/share/work/biosoft/GDAL/gdal-v3.4.1/lib:/share/work/biosoft/JAGS/JAGS-v4.3.0/lib/:/share/work/biosoft/JAGS/JAGS-v4.3.0/lib/JAGS:/share/work/biosoft/python/Python-v3.8.12/lib/:/share/work/biosoft/lib/:/share/work/biosoft/hdf5/hdf5lib-1.10.5/lib:/share/work/biosoft/R/R-v3.5.0/bin/:/share/work/biosoft/gcc/gcc-v6.4.0/lib64/:/share/work/biosoft/mpc/mpc-v1.0.2/lib/:/share/work/biosoft/cufflinks/samtools-0.1.18/htslib-1.3.2/htslib:/share/work/biosoft/samtools/htslib/:/share/work/biosoft/lib/atlas/:/share/work/biosoft/lib:/share/work/biosoft/Root/root/lib/:/share/work/biosoft/gsl/gsl-2.1/lib/:/share/work/biosoft/gcc/gcc-v4.7.3/lib64/:/share/work/biosoft/zlib/lib/:/share/work/biosoft/boost/boost.1.50/lib:/share/work/biosoft/xz/xz-v5.2.3/lib:/opt/gridengine/lib/lx-amd64:/opt/openmpi/lib
ENV JAGS_PREFIX=/share/work/biosoft/JAGS/JAGS-v4.3.0
ENV R_HOME=/share/work/biosoft/R/R-v4.0.3/lib64/R

ENV LD_LIBRARY_PATH=/share/work/biosoft/samtools/htslib:$R_HOME/lib:$LD_LIBRARY_PATH

ENV JAGS_LIBDIR=$JAGS_PREFIX/lib

ENV JAGS_INCLUDEDIR=$JAGS_PREFIX/include
COPY welcome.sh  /root/.welcome.sh

RUN mkdir -p /share/work/biosoft/ && mkdir -p /share/work/biosoft/R && mkdir -p /share/work/biosoft/gcc && mkdir -p /share/work/biosoft/python/
COPY R-v4.0.3 /share/work/biosoft/R/R-v4.0.3
COPY Python-v3.8.12 /share/work/biosoft/python/Python-v3.8.12/
COPY gcc-v6.4.0 /share/work/biosoft/gcc/gcc-v6.4.0
COPY xz /share/work/biosoft/xz
COPY zlib /share/work/biosoft/zlib
COPY pcre /share/work/biosoft/pcre
COPY curl /share/work/biosoft/curl
COPY bzip2 /share/work/biosoft/bzip2
COPY hdf5 /share/work/biosoft/hdf5
COPY samtools /share/work/biosoft/samtools
COPY JAGS-v4.3.0 /biosoft
COPY soft/* /biosoft/
COPY cuda /share/work/biosoft/cuda

RUN cd /biosoft/ && tar zxvf cellranger-7.0.0.tar.gz && tar zxvf STAR-2.7.10a.tar.gz && tar zxvf subread-2.0.3-Linux-x86_64.tar.gz 
ENV PATH=/biosoft/subread-2.0.3-Linux-x86_64/bin:/biosoft/STAR-2.7.10a/bin/Linux_x86_64_static:/biosoft/cellranger-7.0.0/bin:/biosoft/R-v4.1.2/bin:$PATH

#RUN conda install -y numpy scipy cython numba matplotlib scikit-learn h5py click
#RUN conda install -y pip 
#RUN /biosoft/miniconda/bin/pip install velocyto  && conda clean --all --yes
#RUN pip install tidepy

COPY welcome.sh  /home/omicsclass/.welcome.sh
RUN cd /biosoft/ && rm -rf *gz

WORKDIR /work

