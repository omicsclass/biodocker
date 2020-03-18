# 使用方法

## 1.查询镜像：
```
$ docker search omicsclass
INDEX       NAME                                     DESCRIPTION                     STARS     OFFICIAL   AUTOMATED
docker.io   docker.io/omicsclass/biocontainer-base   Biocontainers base Image        0
docker.io   docker.io/omicsclass/samtools            samtools 1.10 from omicsclass   0
```
## 2.下载镜像
```
docker pull docker.io/omicsclass/samtools:latest
```
运行镜像并使用samtools对t.fa文件建立索引
```
$ ll
-rw-rw-r-- 1 biosoft biosoft   70 Mar 16 17:30 t.fa
$ pwd
/biosoft/docker/samtools
$ docker run -v /biosoft/docker/samtools:/work --rm   omicsclass/samtools:latest samtools faidx t.fa
$ ll
total 24
-rw-rw-r-- 1 biosoft biosoft   70 Mar 16 17:30 t.fa
-rw-r--r-- 1 root    root      14 Mar 16 17:55 t.fa.fai
```
## 3.总结
是不是很好用，不用安装软件，直接使用samtools，跳过繁琐的软件安装过程；


docker学习笔记：https://www.omicsclass.com/article/1181

docker基础与使用视频课程：[实验室linux生信分析平台搭建](https://study.163.com/course/introduction/1209757831.htm?share=1&shareId=1030291076)



