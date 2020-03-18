# 使用方法

## 1.查询镜像：
```
$ docker search omicsclass
$ docker search omicsclass
INDEX       NAME                                     DESCRIPTION                           STARS     OFFICIAL   AUTOMATED
docker.io   docker.io/omicsclass/biocontainer-base   Biocontainers base Image              0
docker.io   docker.io/omicsclass/bwa                 BWA v0.7.17 build by omicsclass       0
docker.io   docker.io/omicsclass/isoseq3             isoseq3 v3.3.0 build by omicsclass    0
docker.io   docker.io/omicsclass/samtools            samtools v1.10 build by omicsclass    0
```
## 2.下载镜像
```
docker pull docker.io/omicsclass/isoseq3:latest
```
## 3.运行镜像并使用
```
$ docker run -v /data:/work --rm   omicsclass/isoseq3:latest ccs movie.subreads.bam movie.ccs.bam --min-rq 0.9
$ docker run -v /data:/work --rm   omicsclass/isoseq3:latest lima --isoseq --dump-clips --no-pbi --peek-guess -j 24 ccs.bam primers.fasta demux.bam 
$ docker run -v /data:/work --rm   omicsclass/isoseq3:latest isoseq3 refine --require-polya demux.P5--P3.bam barcodes.fasta flnc.bam
$ docker run -v /data:/work --rm   omicsclass/isoseq3:latest isoseq3 cluster flnc.bam polished.bam --verbose --use-qvs
```

更多帮助参照官方：https://github.com/PacificBiosciences/IsoSeq_SA3nUP/wiki/Tutorial:-Installing-and-Running-Iso-Seq-3-using-Conda

docker学习笔记：https://www.omicsclass.com/article/1181

docker基础与使用视频课程：[实验室linux生信分析平台搭建](https://study.163.com/course/introduction/1209757831.htm?share=1&shareId=1030291076)



