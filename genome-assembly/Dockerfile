# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="genome-assembly" \
      software.version="20220705" \
      about.summary="Docker image containing genome-assembly"\
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="DNA,Genomics,Proteomics,Transcriptomics,General,Metabolomics,resequence"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

ENV PATH=/share/work/biosoft/R/latest/bin:/share/work/biosoft/Purge_Dups/purge_dups/bin/:/share/work/biosoft/LACHESIS/bin:/share/work/biosoft/3d-dna/3d-dna/visualize:/share/work/biosoft/Matlock/matlock/bin:/share/work/biosoft/3d-dna/3d-dna/:/share/work/biosoft/Juicer/juicer/misc:/share/work/biosoft/Juicer/juicer/scripts:/share/work/biosoft/smudgeplot/exec/:/share/work/biosoft/gmap/latest/bin:/share/work/biosoft/fastqc/FastQC:/share/work/biosoft/fastp/latest:/share/work/biosoft/bedtools:/share/work/biosoft/mummer/latest/bin/:/share/work/biosoft/quickmerge/quickmerge:/share/work/biosoft/seqtk/:/share/work/biosoft/ALLHiC/ALLHiC/scripts/:/share/work/biosoft/ALLHiC/ALLHiC/bin/:/share/work/biosoft/NextPolish/NextPolish:/share/work/biosoft/Racon/latest/build/bin:/share/work/biosoft/minimap2/minimap2:/share/work/biosoft/seqtk/seqtk-master/:/share/work/biosoft/assembly-stats/latest:/share/work/biosoft/Hifiasm/latest:/share/work/biosoft/NECAT/NECAT/Linux-amd64/bin:/share/work/biosoft/MECAT/MECAT2/Linux-amd64/bin:/share/work/biosoft/python/Python3/bin/:/share/work/biosoft/NextDenovo/NextDenovo:/share/work/biosoft/wtdbg/latest:/share/work/biosoft/Canu/latest/bin/:/share/work/biosoft/SPAdes/latest/bin/:/share/work/biosoft/soapdenovo/SOAPdenovo2-r242/:/share/work/biosoft/GenomeScope/latest/:/share/work/biosoft/gce/latest/gce-1.0.2:/share/work/biosoft/jellyfish/latest/:/share/work/biosoft/bwa/latest/:/home/huangls/.cargo/bin:/share/work/biosoft/GDAL/gdal-v3.4.1/bin/:/share/work/biosoft/jellyfish/jellyfish-v2.2.6/bin/:/share/work/biosoft/clustalw/clustalw-2.1:/share/work/biosoft/Phylip/phylip-3.696/exe:/share/work/biosoft/miRDeep2/mirdeep2_0_0_8/bin:/share/work/biosoft/muscle/muscle_v3.8.31/:/share/work/biosoft/Proj/proj-v6.1.1/bin:/share/work/biosoft/bugbase/BugBase-master/bin:/share/work/biosoft/pandoc/pandoc-2.7.2/bin:/share/work/biosoft/psMimic/psMimic_v1.1/bin:/share/work/biosoft/augustus/latest//scripts:/share/work/biosoft/augustus/latest/bin/:/share/work/biosoft/cellranger/latest/:/share/work/biosoft/bamtools/latest/bin/:/share/work/biosoft/tools/:/share/work/biosoft/perl/latest/bin/:/share/work/biosoft/maker/maker/bin:/share/work/biosoft/RepeatMasker/RepeatMasker:/share/work/biosoft/BRAKER/latest/scripts/:/share/work/biosoft/SNAP/SNAP:/share/work/biosoft/exonerate/latest/bin:/share/work/biosoft/hmmer/latest/bin/:/share/work/biosoft/blast/latest/bin/:/share/work/biosoft/cmake/latest/bin/:/share/work/biosoft/hdf5/hdf5lib/bin:/share/work/biosoft/samtools/htslib/:/share/work/biosoft/annovar/2019Oct24/:/share/work/biosoft/python/Python3/bin/:/share/work/biosoft/gcc/gcc-v6.4.0/bin/:/share/work/biosoft/tools/bin/:/share/work/biosoft/bin:/share/work/biosoft/ViennaRNA/ViennaRNA-2.2.7/bin/:/share/work/biosoft/miRDeep2/randfold-2.0.1-a7feeeaeba2afe567dbd061b9f4965646386bc98:/share/work/biosoft/homer/bin/:/share/work/biosoft/samtools/latest/bin:/share/work/biosoft/hmmer/hmmer-3.1b2/bin/:/share/work/biosoft/hmmer/hmmer-2.3.2/squid:/share/work/biosoft/sratoolkit/sratoolkit.2.5.7-centos_linux64/bin:/share/work/biosoft/blast/ncbi-blast-2.3.0+/bin/:/share/work/biosoft/StringTie/stringtie-1.2.2.Linux_x86_64/:/share/work/biosoft/HISAT/hisat2-2.0.1-beta/:/share/work/biosoft/bamtools/bamtools-master/bin/bamtools:/share/work/biosoft/python/Python2/bin/:/share/work/biosoft/java/jdk1.8.0_161/bin/:/share/work/biosoft/R/latest/bin:/share/work/biosoft/bedtools/bedtools2-v2.25.0/bin/:/share/work/biosoft/perl/perl-5.22.1/bin/:/share/work/biosoft/bowtie/bowtie-1.1.2/:/share/work/biosoft/bowtie2/bowtie2-2.2.7/:/share/work/biosoft/bugbase/BugBase-master/bin:/share/work/biosoft/cufflinks/cufflinks-2.2.1/:/opt/openmpi/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/ganglia/bin:/opt/ganglia/sbin:/opt/rocks/bin:/opt/rocks/sbin:/opt/condor/bin:/opt/condor/sbin:/opt/gridengine/bin/lx-amd64:/share/work/biosoft/Orthomcl/orthomclSoftware-v2.0.9/bin:/share/work/biosoft/Gblocks/Gblocks_0.91b/:/share/work/biosoft/minimap2/minimap2/:/share/work/biosoft/Mash:/share/work/biosoft/subread/subread-1.6.2-Linux-x86_64/bin:/share/work/biosoft/salmon/salmon-0.11.2/bin:/usr/VIP:/usr/VIP/edirect:/usr/VIP/bin:/share/work/biosoft/miRDeep2/mirdeep2-0.1.3/bin:/home/huangls/bin:/share/work/biosoft/bugbase/BugBase-master//bin:/share/work/biosoft/rmblast/latest/bin
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH::/share/work/biosoft/JAGS/JAGS-v4.3.0/lib/:/share/work/biosoft/JAGS/JAGS-v4.3.0/lib/JAGS:/share/work/biosoft/cuda/cuda-11.7.0/lib64/:/share/work/biosoft/Proj/proj-v6.1.1/lib:/share/work/biosoft/gcc/gcc-v6.4.0/lib64/:/usr/lib:/usr/lib64:/share/work/biosoft/bamtools/bamtools-v2.4.0/lib/:/share/work/biosoft/gcc/gcc-v6.4.0/lib64/:/share/work/biosoft/gcc/gcc-v6.4.0/lib/:/share/work/biosoft/boost/boost.1.64/lib/:/share/work/biosoft/lib/atlas/:/share/work/biosoft/lib:/share/work/biosoft/Root/root/lib/:/share/work/biosoft/gsl/gsl-2.1/lib/:/share/work/biosoft/gcc/gcc-v4.7.3/lib64/:/share/work/biosoft/python/Python-v3.8.12/lib:/share/work/biosoft/GDAL/gdal-v3.4.1/lib:/share/work/biosoft/python/Python-v3.8.12/lib/:/share/work/biosoft/lib/:/share/work/biosoft/hdf5/hdf5lib-1.10.5/lib:/share/work/biosoft/R/R-v3.5.0/bin/:/share/work/biosoft/gcc/gcc-v6.4.0/lib64/:/share/work/biosoft/mpc/mpc-v1.0.2/lib/:/share/work/biosoft/cufflinks/samtools-0.1.18/htslib-1.3.2/htslib:/share/work/biosoft/samtools/htslib/:/share/work/biosoft/lib/atlas/:/share/work/biosoft/lib:/share/work/biosoft/Root/root/lib/:/share/work/biosoft/gsl/gsl-2.1/lib/:/share/work/biosoft/gcc/gcc-v4.7.3/lib64/:/share/work/biosoft/zlib/lib/:/share/work/biosoft/boost/boost.1.50/lib:/share/work/biosoft/xz/xz-v5.2.3/lib:/opt/gridengine/lib/lx-amd64:/opt/openmpi/lib
ENV JAGS_PREFIX=/share/work/biosoft/JAGS/JAGS-v4.3.0
ENV R_HOME=/share/work/biosoft/R/latest/lib64/R

ENV LD_LIBRARY_PATH=/share/work/biosoft/samtools/htslib:$R_HOME/lib:$LD_LIBRARY_PATH

ENV JAGS_LIBDIR=$JAGS_PREFIX/lib

ENV JAGS_INCLUDEDIR=$JAGS_PREFIX/include
COPY welcome.sh  /root/.welcome.sh
COPY Rprofile /root/.Rprofile
#RUN mkdir -p /share/work/biosoft/ /share/work/biosoft/JAGS&& mkdir -p /share/work/biosoft/R && mkdir -p /share/work/biosoft/gcc && mkdir -p /share/work/biosoft/python/
#RUN mkdir -p /share/work/biosoft/ && mkdir -p /share/work/biosoft/gcc && mkdir -p /share/work/biosoft/python/
#COPY latest /share/work/biosoft/R/latest
COPY ALLHiC /share/work/biosoft/ALLHiC
COPY assembly-stats /share/work/biosoft/assembly-stats
COPY bwa /share/work/biosoft/bwa
COPY Canu /share/work/biosoft/Canu
COPY gcc /share/work/biosoft/gcc
COPY gce /share/work/biosoft/gce
COPY GenomeScope /share/work/biosoft/GenomeScope
COPY Hifiasm /share/work/biosoft/Hifiasm
COPY jellyfish /share/work/biosoft/jellyfish
COPY lib /share/work/biosoft/lib
COPY MECAT /share/work/biosoft/MECAT
COPY minimap2 /share/work/biosoft/minimap2
COPY mummer /share/work/biosoft/mummer
COPY NECAT /share/work/biosoft/NECAT
COPY NextDenovo /share/work/biosoft/NextDenovo
COPY NextPolish /share/work/biosoft/NextPolish
COPY perl /share/work/biosoft/perl
COPY python /share/work/biosoft/python
COPY quickmerge /share/work/biosoft/quickmerge
COPY Racon /share/work/biosoft/Racon
COPY Rprofile /share/work/biosoft/Rprofile
COPY samtools /share/work/biosoft/samtools
COPY seqtk /share/work/biosoft/seqtk
COPY soapdenovo /share/work/biosoft/soapdenovo
COPY SPAdes /share/work/biosoft/SPAdes
COPY wtdbg /share/work/biosoft/wtdbg
COPY Pilon /share/work/biosoft/Pilon
COPY R /share/work/biosoft/R
COPY curl /share/work/biosoft/curl/ 
COPY pcre /share/work/biosoft/pcre/ 
COPY xz /share/work/biosoft/xz/ 
COPY zlib /share/work/biosoft/zlib/ 
COPY gmap /share/work/biosoft/gmap 
COPY Purge_Dups /share/work/biosoft/Purge_Dups
#COPY JAGS /share/work/biosoft/JAGS/ 
#COPY hdf5 /share/work/biosoft/hdf5/ 
#COPY cuda /share/work/biosoft/cuda/ 
COPY bzip2 /share/work/biosoft/bzip2/ 
COPY bedtools /share/work/biosoft/bedtools
COPY fastp /share/work/biosoft/fastp
COPY fastqc /share/work/biosoft/fastqc
#COPY redundans /share/work/biosoft/redundans/redundans/
COPY Juicer /share/work/biosoft/Juicer
COPY LACHESIS /share/work/biosoft/LACHESIS
COPY smudgeplot /share/work/biosoft/smudgeplot
COPY 3d-dna /share/work/biosoft/3d-dna
COPY Matlock /share/work/biosoft/Matlock

COPY welcome.sh  /home/omicsclass/.welcome.sh
RUN cd /biosoft/ && rm -rf *gz

WORKDIR /work

