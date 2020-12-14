# Base image
FROM adrlar/biolinux:8

################## METADATA ######################
LABEL base.image="adrlar/biolinux:8" \
      version="v0.0.1" \
      software="biolinux" \
      software.version="20201214" \
      about.summary="biolinux for learn linux" \
      about.home="www.omicsclass.com" \
      about.documentation="" \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>


RUN useradd --create-home --shell /bin/bash --user-group --uid 1000 --groups sudo,fuse manager && \
    echo `echo "manager\nmanager\n" | passwd manager` && \
    mkdir /biosoft && \
    chown manager:manager /biosoft

RUN chmod 775 /var/log/samba
# Change user
USER manager
COPY welcome.sh  /home/manager/.welcome.sh
RUN    echo "export PS1='\[\e[32;1m\][\[\e[35;1m\]\u\[\e[31;1m\]@\[\e[35;1m\]\h \[\e[31m\] \t \[\e[31;1m\]\w\[\e[32;1m\]]\[\e[33;1m\]# \[\e[0m\]'" >> ~/.bashrc \
        && echo "sh ~/.welcome.sh" >> ~/.bashrc


#
# ENV PATH=$PATH:/home/biodocker/bin
# ENV HOME=/home/biodocker
#
RUN mkdir /home/manager/Public /home/manager/Documents
RUN mkdir -p /biosoft/meme/ /biosoft/circos
	
#
#VOLUME ["/data", "/config"]
#
# # Overwrite this with 'CMD []' in a dependent Dockerfile
 CMD ["/bin/bash"]
#
 WORKDIR /home/manager

