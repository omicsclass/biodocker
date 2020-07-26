# Base image
FROM mattrayner/lamp:latest

################## METADATA ######################
LABEL base.image="mattrayner/lamp:latest" \
      version="1" \
      software="Biocontainers GSDS service" \
      software.version="20200724" \
      about.summary="image for Gene Structure Display Server" \
      about.home="www.omicsclass.com" \
      about.documentation=" " \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
ENV LANG=en_US.utf8 LC_ALL=en_US.utf8

RUN apt-get -qq update && apt-get -y upgrade && apt-get -y install make  librsvg2-dev  librsvg2-bin emboss=6.6.0+dfsg-6build1 python2.7-dev bioperl && cpan install SVG Bio::Phylo 
#RUN ln -s /usr/bin/python2.7 /usr/bin/python
WORKDIR /tmp

### Installing bedtools2
#
ENV VERSION 2.26.0
ENV NAME bedtools2
ENV URL "https://github.com/arq5x/bedtools2/releases/download/v${VERSION}/bedtools-${VERSION}.tar.gz"
#
RUN wget -q -O - $URL | tar -zxv && \
cd ${NAME} && \
make -j 4 && \
cd .. && \
cp ./${NAME}/bin/bedtools /usr/local/bin/ && \
strip /usr/local/bin/*; true && \
rm -rf ./${NAME}/

#COPY 	gsds_v2.tar.gz /app

#RUN 	cd /app && tar -zxvf gsds_v2.tar.gz \
#	&& mv gsds_v2/* . \
#	&& mkdir -p task/upload_file \
#	&& chmod 777 task/ \
#	&& chmod 777 task/upload_file/ \
#	&& chmod a+w gsds_log \
#	&& cd gcgi_bin \
#	&& ln -s -f /usr/bin/seqretsplit seqretsplit \
#	&& ln -s -f /usr/bin/est2genome est2genome \
#	&& ln -s -f /usr/bin/bedtools  bedtools \
#	&& ln -s -f /usr/bin/rsvg-convert rsvg-convert 

CMD ["/run.sh"]


