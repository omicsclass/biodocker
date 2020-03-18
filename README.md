# biodocker
由[组学大讲堂](www.omicsclass.com)提供的，为生物数据分析提供各种生物信息分析软件的docker 镜像.
解决安装Linux生物分析软件系统环境兼容问题，让生物学家把更多的时间投入到自己的数据分析中，而不是把时间浪费在软件的安装与调试上。

docker使用学习笔记：https://www.omicsclass.com/article/1181

docker基础与使用视频课程：[实验室linux生信分析平台搭建](https://study.163.com/course/introduction/1209757831.htm?share=1&shareId=1030291076)

# 使用方法
```
$ docker search omicsclass #搜索镜像
INDEX       NAME                                     DESCRIPTION                           STARS     OFFICIAL   AUTOMATED
docker.io   docker.io/omicsclass/biocontainer-base   Biocontainers base Image              0
docker.io   docker.io/omicsclass/bwa                 BWA v0.7.17 build by omicsclass       0
docker.io   docker.io/omicsclass/isoseq3             isoseq3 v3.3.0 build by omicsclass    0
docker.io   docker.io/omicsclass/samtools            samtools v1.10 build by omicsclass    0
$ docker pull docker.io/omicsclass/samtools:latest  #下载镜像
$ docker images  #查看镜像
REPOSITORY                     TAG                 IMAGE ID            CREATED             SIZE
omicsclass/isoseq3             latest              cebd646cb441        19 hours ago        2.27 GB
omicsclass/bwa                 latest              21d75ee161fa        41 hours ago        1.06 GB
omicsclass/samtools            latest              d505ac3f6c30        42 hours ago        988 MB
omicsclass/biocontainer-base   latest              3501aa40f5a7        2 days ago          669 MB
docker.io/centos               centos7             5e35e350aded        4 months ago        203 MB
```
