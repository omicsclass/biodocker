# Base image
FROM centos:centos7

################## METADATA ######################
LABEL base.image="centos:7" \
      version="1" \
      software="Biocontainers base Image" \
      software.version="20200312" \
      about.summary="Base image for omicsclass" \
      about.home="www.omicsclass.com" \
      about.documentation=" " \
      license="  " \
      about.tags="Genomics,Proteomics,Transcriptomics,General,Metabolomics"

################## MAINTAINER ######################
MAINTAINER huangls <huang2002003@qq.com>

#COPY Miniconda3-latest-Linux-x86_64.sh /tmp/miniconda.sh
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /biosoft/miniconda/bin:$PATH

RUN	ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && yum -y update && yum upgrade -y \
	&& yum -y install  bzip2 openssl openssh-clients\
                cmake zlib  libpng libpng12 libtiff  libjpeg boost \
                wget   zip    which  less  tree unzip gcc-c++ java-1.8.0-openjdk-devel-debug.x86_64 \
	&& yum clean all 

RUN	mkdir -p  /biosoft/miniconda  \
        && wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh \
    	&& bash /tmp/miniconda.sh -bfp /biosoft/miniconda \
    	&& rm -rf /tmp/miniconda.sh \
        && ln -s /biosoft/miniconda/etc/profile.d/conda.sh /etc/profile.d/conda.sh  \
    	&& echo ". /biosoft/miniconda/etc/profile.d/conda.sh" >> ~/.bashrc  \
        && echo "alias e=\"less -S \"" >> ~/.bashrc \
        && echo "alias ee=\"less -SN \"" >> ~/.bashrc \
        && echo "alias l=\"ls -lhtr"\" >> ~/.bashrc \
        && echo "alias ll=\"ls -lh\"" >> ~/.bashrc \
        && echo "export LESSCHARSET=utf-8" >> ~/.bashrc \
        && echo -e "set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,gb18030,big5,latin-1\nset encoding=utf-8\nset termencoding=utf-8\nset fileencoding=utf-8\n" >> /etc/virc \
        && echo "export PS1=\"\[\e[32m\][\[\e[35m\]\u\[\e[m\]@\[\e[36m\]\h \[\e[31m\] \t \w\[\e[32m\]]\[\e[36m\]#\[\e[m\]\"" >> ~/.bashrc \
        #&& conda config --add channels bioconda \
        #&& conda config --add channels conda-forge \
        #&& conda config --add channels genomedk \
        && conda config --add channels http://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/  \
        && conda config --add channels http://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/r/  \
        && conda config --add channels http://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/mro/  \
        && conda config --add channels http://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/  \
        && conda config --add channels http://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/  \
        && conda config --add channels http://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda/  \
        && conda config --set show_channel_urls yes \
        && conda config --set ssl_verify no \
        && conda update -y -n base -c defaults conda && conda clean --all --yes 



VOLUME ["/work"]

# Overwrite this with 'CMD []' in a dependent Dockerfile
CMD ["/bin/bash"]

WORKDIR /work
