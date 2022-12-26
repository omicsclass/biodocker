# Base image
FROM omicsclass/biocontainer-base:latest

################## METADATA ######################
LABEL base.image="omicsclass/biocontainer-base:latest" \
      version="v0.0.1" \
      software="genome-annotation" \
      software.version="20220823" \
      about.summary="Docker image containing genome-annotation"\
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="DNA,Genomics,Proteomics,Transcriptomics,General,Metabolomics,resequence"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

ENV PATH=/share/work/biosoft/cegma/latest/bin:/share/work/biosoft/MMseqs/latest/bin:/share/work/biosoft/tmhmm/latest/bin:/share/work/biosoft/signalp/latest/bin:/share/work/biosoft/SQLite/latest/bin:/share/work/biosoft/java/latest/bin:/share/work/biosoft/metaeuk/metaeuk/bin/:/share/work/biosoft/MCScanX/:/share/work/biosoft/bowtie2/latest:/share/work/biosoft/mpich/mpich/bin/:/share/work/biosoft/mysql/latest/bin/:/share/work/biosoft/StringTie/latest/:/share/work/biosoft/GlimmerHMM/latest/train:/share/work/biosoft/GlimmerHMM/latest/bin:/share/work/biosoft/PASApipeline/latest:/share/work/biosoft/PASApipeline/latest/bin/:/share/work/biosoft/PASApipeline/PASApipeline-v2.5.2/scripts/:/share/work/biosoft/blat/blat/:/share/work/biosoft/pblat/latest/:/share/work/biosoft/minimap2/minimap2:/share/work/biosoft/fasta/latest/bin/:/share/work/biosoft/gmap-gsnap/latest/bin/:/share/work/biosoft/PASApipeline/latest/misc_utilities/:/share/work/biosoft/trinity/latest:/share/work/biosoft/salmon/latest/bin:/share/work/biosoft/jellyfish/latest:/share/work/biosoft/circos/latest/bin/:/share/work/biosoft/TransDecoder/latest:/share/work/biosoft/TransDecoder/latest/util:/share/work/biosoft/DeepTE/:/share/work/biosoft/geneid/latest/bin:/share/work/biosoft/MITE-Hunter/MITE_Hunter_2:/share/work/biosoft/LTR_Finder/LTR_FINDER_parallel/:/share/work/biosoft/GUSHR/GUSHR-master/:/share/work/biosoft/tools/:/share/work/biosoft/RAPSearch/RAPSearch2.24_64bits/bin/:/share/work/biosoft/blast/latest/bin/:/share/work/biosoft/blast/blast-2.2.26/bin/:/share/work/biosoft/wu-blast/:/share/work/biosoft/GeneMarkS/GeneMarkS-v.4.30/gmsuite/:/share/work/biosoft/GeneMark.hmm/genemark_hmm_euk_linux_64/ehmm:/share/work/biosoft/GeneMark-ES/latest/gmes_linux_64_4:/share/work/biosoft/Snoscan/snoscan-1.0:/share/work/biosoft/SNAP/SNAP/:/share/work/biosoft/hmmer/latest/bin/:/share/work/biosoft/miRanda/miRanda-3.3a/bin:/share/work/biosoft/rnammer:/share/work/biosoft/infernal/latest/bin:/share/work/biosoft/EVidenceModeler/latest/EvmUtils/misc/:/share/work/biosoft/EVidenceModeler/latest/EvmUtils/:/share/work/biosoft/EVidenceModeler/latest/:/share/work/biosoft/genometools/latest/bin:/share/work/biosoft/Ninja/latest/NINJA:/share/work/biosoft/rmblast/latest/bin:/share/work/biosoft/mafft/latest/bin:/share/work/biosoft/seqkit:/share/work/biosoft/seqtk/:/share/work/biosoft/cdhit/latest/:/share/work/biosoft/LTR_Finder/LTR_Finder/source:/share/work/biosoft/tRNAscan-SE/latest/bin:/share/work/biosoft/GeneWise/latest/bin:/share/work/biosoft/Ltr_retriever/latest:/share/work/biosoft/exonerate/latest/bin/:/share/work/biosoft/BUSCO/busco-5.3.2/bin/:/share/work/biosoft/ProtHint/latest/bin/:/share/work/biosoft/GenomeThreader/latest/bin/:/share/work/biosoft/augustus/latest/scripts/:/share/work/biosoft/augustus/latest/bin/:/share/work/biosoft/samtools/latest/bin/:/share/work/biosoft/BRAKER/latest/scripts/:/share/work/biosoft/maker/maker/bin/:/share/work/biosoft/HISAT/latest/:/share/work/biosoft/RepeatMasker/RepeatMasker/util/:/share/work/biosoft/RepeatMasker/RepeatMasker/:/share/work/biosoft/RepeatModeler/RepeatModeler-2.0.3/:/home/huangls/.cargo/bin:/share/work/biosoft/GDAL/gdal-v3.4.1/bin/:/share/work/biosoft/jellyfish/jellyfish-v2.2.6/bin/:/share/work/biosoft/clustalw/clustalw-2.1:/share/work/biosoft/Phylip/phylip-3.696/exe:/share/work/biosoft/miRDeep2/mirdeep2_0_0_8/bin:/share/work/biosoft/muscle/muscle_v3.8.31/:/share/work/biosoft/Proj/proj-v6.1.1/bin:/share/work/biosoft/bugbase/BugBase-master/bin:/share/work/biosoft/pandoc/pandoc-2.7.2/bin:/share/work/biosoft/psMimic/psMimic_v1.1/bin:/share/work/biosoft/augustus/latest//scripts:/share/work/biosoft/augustus/latest/bin/:/share/work/biosoft/cellranger/latest/:/share/work/biosoft/bamtools/latest/bin/:/share/work/biosoft/tools/:/share/work/biosoft/perl/latest/bin/:/share/work/biosoft/maker/maker/bin:/share/work/biosoft/RepeatMasker/RepeatMasker:/share/work/biosoft/BRAKER/latest/scripts/:/share/work/biosoft/SNAP/SNAP:/share/work/biosoft/exonerate/latest/bin:/share/work/biosoft/hmmer/latest/bin/:/share/work/biosoft/blast/latest/bin/:/share/work/biosoft/cmake/latest/bin/:/share/work/biosoft/hdf5/hdf5lib/bin:/share/work/biosoft/samtools/htslib/:/share/work/biosoft/annovar/2019Oct24/:/share/work/biosoft/python/Python3/bin/:/share/work/biosoft/gcc/gcc-v6.4.0/bin/:/share/work/biosoft/tools/bin/:/share/work/biosoft/bin:/share/work/biosoft/ViennaRNA/ViennaRNA-2.2.7/bin/:/share/work/biosoft/miRDeep2/randfold-2.0.1-a7feeeaeba2afe567dbd061b9f4965646386bc98:/share/work/biosoft/homer/bin/:/share/work/biosoft/samtools/samtools-v1.9/bin:/share/work/biosoft/hmmer/hmmer-3.1b2/bin/:/share/work/biosoft/hmmer/hmmer-2.3.2/squid:/share/work/biosoft/sratoolkit/sratoolkit.2.5.7-centos_linux64/bin:/share/work/biosoft/blast/ncbi-blast-2.3.0+/bin/:/share/work/biosoft/StringTie/stringtie-1.2.2.Linux_x86_64/:/share/work/biosoft/HISAT/hisat2-2.0.1-beta/:/share/work/biosoft/bamtools/bamtools-master/bin/bamtools:/share/work/biosoft/python/Python2/bin/:/share/work/biosoft/java/jdk1.8.0_161/bin/:/share/work/biosoft/R/R-v4.2.0/bin:/share/work/biosoft/bedtools/bedtools2-v2.25.0/bin/:/share/work/biosoft/perl/perl-5.22.1/bin/:/share/work/biosoft/bowtie/bowtie-1.1.2/:/share/work/biosoft/bowtie2/bowtie2-2.2.7/:/share/work/biosoft/bugbase/BugBase-master/bin:/share/work/biosoft/cufflinks/cufflinks-2.2.1/:/opt/openmpi/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/ganglia/bin:/opt/ganglia/sbin:/opt/pdsh/bin:/opt/rocks/bin:/opt/rocks/sbin:/opt/condor/bin:/opt/condor/sbin:/opt/gridengine/bin/lx-amd64:/share/work/biosoft/Orthomcl/orthomclSoftware-v2.0.9/bin:/share/work/biosoft/Gblocks/Gblocks_0.91b/:/share/work/biosoft/minimap2/minimap2/:/share/work/biosoft/Mash:/share/work/biosoft/subread/subread-1.6.2-Linux-x86_64/bin:/share/work/biosoft/salmon/salmon-0.11.2/bin:/usr/VIP:/usr/VIP/edirect:/usr/VIP/bin:/share/work/biosoft/miRDeep2/mirdeep2-0.1.3/bin:/home/huangls/bin:/share/work/biosoft/bugbase/BugBase-master//bin:/share/work/biosoft/rmblast/latest/bin

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/share/work/biosoft/R/R-v4.2.0/lib64/R/lib:/share/work/biosoft/hdf5/hdf5lib/lib:/share/work/biosoft/JAGS/JAGS-v4.3.0/lib/:/share/work/biosoft/Proj/proj-v6.1.1/lib:/share/work/biosoft/gcc/gcc-v6.4.0/lib64/:/usr/lib:/usr/lib64:/share/work/biosoft/bamtools/bamtools-v2.4.0/lib/:/share/work/biosoft/gcc/gcc-v6.4.0/lib64/:/share/work/biosoft/gcc/gcc-v6.4.0/lib/:/share/work/biosoft/boost/boost.1.64/lib/:/share/work/biosoft/lib/atlas/:/share/work/biosoft/lib:/share/work/biosoft/Root/root/lib/:/share/work/biosoft/gsl/gsl-2.1/lib/:/share/work/biosoft/gcc/gcc-v4.7.3/lib64/:/share/work/biosoft/JAGS/JAGS-v4.3.0/lib/:/share/work/biosoft/cuda/cuda-11.7.0/lib64/:/share/work/biosoft/python/Python-v3.8.12/lib:/share/work/biosoft/GDAL/gdal-v3.4.1/lib:/share/work/biosoft/JAGS/JAGS-v4.3.0/lib/:/share/work/biosoft/JAGS/JAGS-v4.3.0/lib/JAGS:/share/work/biosoft/python/Python-v3.8.12/lib/:/share/work/biosoft/lib/:/share/work/biosoft/hdf5/hdf5lib/lib:/share/work/biosoft/gcc/gcc-v6.4.0/lib64/:/share/work/biosoft/mpc/mpc-v1.0.2/lib/:/share/work/biosoft/cufflinks/samtools-0.1.18/htslib-1.3.2/htslib:/share/work/biosoft/samtools/htslib/:/share/work/biosoft/lib/atlas/:/share/work/biosoft/lib:/share/work/biosoft/Root/root/lib/:/share/work/biosoft/gsl/gsl-2.1/lib/:/share/work/biosoft/gcc/gcc-v4.7.3/lib64/:/share/work/biosoft/zlib/lib/:/share/work/biosoft/boost/boost.1.50/lib:/share/work/biosoft/xz/xz-v5.2.3/lib:/opt/gridengine/lib/lx-amd64:/opt/openmpi/lib
ENV JAGS_PREFIX=/share/work/biosoft/JAGS/JAGS-v4.3.0
ENV R_HOME=/share/work/biosoft/R/latest/lib64/R
ENV JAVA_HOME=/share/work/biosoft/java/latest
ENV LD_LIBRARY_PATH=/share/work/biosoft/SQLite/latest/lib:/share/work/biosoft/samtools/htslib:$R_HOME/lib:$LD_LIBRARY_PATH

ENV JAGS_LIBDIR=$JAGS_PREFIX/lib
ENV GENEMARK_PATH=/share/work/biosoft/GeneMark-ES/latest/gmes_linux_64_4/
ENV busco_download_path=/share/nas5/huangls/test/genome_annotation/buscodb
ENV AUGUSTUS_CONFIG_PATH=/share/work/biosoft/augustus/latest/config/
ENV EVM_HOME=/share/work/biosoft/EVidenceModeler/latest/
ENV ZOE=/share/work/biosoft/SNAP/SNAP/Zoe
ENV GeneidTRAINerDocker=/share/work/biosoft/geneid/GeneidTRAINerDocker
ENV PATH=$GeneidTRAINerDocker/scripts/:$GeneidTRAINerDocker/scripts/pictogram:$GeneidTRAINerDocker/scripts/SSgff/bin:$GeneidTRAINerDocker/scripts/Evaluation/bin:${PATH}
ENV PERL5LIB=$GeneidTRAINerDocker/scripts/:${PERL5LIB}
ENV CEGMA=/share/work/biosoft/cegma/latest
ENV PERL5LIB=$PERL5LIB:$CEGMA/lib
ENV PERL5LIB=$GeneidTRAINerDocker/scripts/:${PERL5LIB}
ENV JAGS_INCLUDEDIR=$JAGS_PREFIX/include
COPY welcome.sh  /root/.welcome.sh
COPY Rprofile /root/.Rprofile
COPY mpich /share/work/biosoft/mpich/
ENV MPI_HOME=/share/work/biosoft/mpich/mpich/
ENV PATH=${MPI_HOME}/bin:$PATH
ENV LD_LIBRARY_PATH=${MPI_HOME}/lib:$LD_LIBRARY_PATH
#RUN mkdir -p /share/work/biosoft/ /share/work/biosoft/JAGS&& mkdir -p /share/work/biosoft/R && mkdir -p /share/work/biosoft/gcc && mkdir -p /share/work/biosoft/python/
#RUN mkdir -p /share/work/biosoft/ && mkdir -p /share/work/biosoft/gcc && mkdir -p /share/work/biosoft/python/
#COPY latest /share/work/biosoft/R/latest
COPY gcc /share/work/biosoft/gcc
COPY perl /share/work/biosoft/perl
COPY python /share/work/biosoft/python
COPY R /share/work/biosoft/R
COPY curl /share/work/biosoft/curl/ 
COPY pcre /share/work/biosoft/pcre/ 
COPY xz /share/work/biosoft/xz/ 
COPY zlib /share/work/biosoft/zlib/ 
COPY tools /share/work/biosoft/tools/ 
#COPY JAGS /share/work/biosoft/JAGS/ 
#COPY hdf5 /share/work/biosoft/hdf5/ 
#COPY cuda /share/work/biosoft/cuda/ 
COPY bzip2 /share/work/biosoft/bzip2/ 
COPY lib /share/work/biosoft/lib

COPY augustus /share/work/biosoft/augustus
COPY blast /share/work/biosoft/blast
COPY bamtools /share/work/biosoft/bamtools
COPY BRAKER /share/work/biosoft/BRAKER
COPY BUSCO /share/work/biosoft/BUSCO
COPY cdhit /share/work/biosoft/cdhit
COPY EVidenceModeler /share/work/biosoft/EVidenceModeler
COPY exonerate /share/work/biosoft/exonerate
COPY GeneMark-ES /share/work/biosoft/GeneMark-ES
COPY GeneMark.hmm /share/work/biosoft/GeneMark.hmm
COPY GeneMarkS /share/work/biosoft/GeneMarkS
COPY GeneWise /share/work/biosoft/GeneWise
COPY GenomeThreader /share/work/biosoft/GenomeThreader
COPY genometools /share/work/biosoft/genometools
COPY GUSHR /share/work/biosoft/GUSHR
COPY HISAT /share/work/biosoft/HISAT
COPY StringTie /share/work/biosoft/StringTie
COPY hmmer /share/work/biosoft/hmmer
COPY infernal /share/work/biosoft/infernal
COPY LTR_Finder /share/work/biosoft/LTR_Finder
COPY Ltr_retriever /share/work/biosoft/Ltr_retriever
COPY mafft /share/work/biosoft/mafft
COPY maker /share/work/biosoft/maker
COPY miRanda /share/work/biosoft/miRanda
COPY Ninja /share/work/biosoft/Ninja
COPY ProtHint /share/work/biosoft/ProtHint
COPY RAPSearch /share/work/biosoft/RAPSearch
COPY RepeatMasker /share/work/biosoft/RepeatMasker
COPY RepeatModeler /share/work/biosoft/RepeatModeler
COPY rmblast /share/work/biosoft/rmblast
COPY rnammer /share/work/biosoft/rnammer
COPY samtools /share/work/biosoft/samtools
COPY seqkit /share/work/biosoft/seqkit
COPY seqtk /share/work/biosoft/seqtk
COPY SNAP /share/work/biosoft/SNAP
COPY Snoscan /share/work/biosoft/Snoscan
COPY tRNAscan-SE /share/work/biosoft/tRNAscan-SE
COPY wu-blast /share/work/biosoft/wu-blast
COPY MITE-Hunter /share/work/biosoft/MITE-Hunter
COPY muscle /share/work/biosoft/muscle/
COPY PASApipeline /share/work/biosoft/PASApipeline/
COPY blat /share/work/biosoft/blat

COPY pblat /share/work/biosoft/pblat/
COPY minimap2 /share/work/biosoft/minimap2
COPY fasta /share/work/biosoft/fasta/
COPY gmap-gsnap /share/work/biosoft/gmap-gsnap/
COPY trinity /share/work/biosoft/trinity
COPY salmon /share/work/biosoft/salmon/
COPY jellyfish /share/work/biosoft/jellyfish/
COPY circos /share/work/biosoft/circos
COPY TransDecoder /share/work/biosoft/TransDecoder/
COPY DeepTE /share/work/biosoft/DeepTE
COPY geneid /share/work/biosoft/geneid/
COPY GlimmerHMM /share/work/biosoft/GlimmerHMM/
COPY GeMoMa /share/work/biosoft/GeMoMa/
COPY mysql /share/work/biosoft/mysql
COPY bowtie2 /share/work/biosoft/bowtie2/
COPY metaeuk /share/work/biosoft/metaeuk
COPY java /share/work/biosoft/java
COPY  SQLite /share/work/biosoft/SQLite/
COPY  tmhmm /share/work/biosoft/tmhmm
COPY  signalp /share/work/biosoft/signalp
COPY MCScanX /share/work/biosoft/MCScanX
COPY MMseqs /share/work/biosoft/MMseqs
COPY cegma /share/work/biosoft/cegma
RUN yum -y install  mariadb-libs glibc.i686

#RUN pip3 install gff3tool
RUN cd /biosoft/ && rm -rf *gz




WORKDIR /work

