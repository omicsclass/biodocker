# 说明
这个是[组学大讲堂](https://www.omicsclass.com/)提供的基因家族分析课程镜像，里面安装了一些关于基因家族分析的软件包：
circos，meme，bioperl等等

更多可观看视频课程：[基因家族](https://study.163.com/course/introduction/1209048893.htm?share=1&shareId=1030291076)
# 软件列表
|软件|版本|
|---|---|
|python|2.7|
|jcvi|1.0.5|
|circos|0.69.8|
|perl-bioperl|1.7.2|
|blast|2.9.0|
|hmmer|3.3|
|clustalw|2.1|
|meme|5.1.0|
|samtools|1.10|
|MCScanX||
|KaKs_Calculator|2.0

# 使用方法

## 1.查询镜像：
```
$ docker search omicsclass
INDEX       NAME                                     DESCRIPTION                           STARS     OFFICIAL   AUTOMATED
docker.io   docker.io/omicsclass/biocontainer-base   Biocontainers base Image              0
docker.io   docker.io/omicsclass/bwa                 BWA v0.7.17 build by omicsclass       0
docker.io   docker.io/omicsclass/gene-family         gene-family analysis docker image     0
docker.io   docker.io/omicsclass/isoseq3             isoseq3 v3.3.0 build by omicsclass    0
docker.io   docker.io/omicsclass/samtools            samtools v1.10 build by omicsclass    0
```
## 2.下载镜像
```
docker pull docker.io/omicsclass/gene-family:latest
```
## 

docker学习笔记：https://www.omicsclass.com/article/1181

docker基础与使用视频课程：[实验室linux生信分析平台搭建](https://study.163.com/course/introduction/1209757831.htm?share=1&shareId=1030291076)



