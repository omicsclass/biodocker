#rm -rf R-v4.0.3
#rm -rf Python-v3.8.12
#rm -rf 
#cp -r /share/work/biosoft/R/R-v4.0.3/ .
#cp -r /share/work/biosoft/python/Python-v3.8.12 .
docker build -t omicsclass/genome-annotation:latest .
docker tag omicsclass/genome-annotation:latest omicsclass/genome-annotation:v1.0
docker push omicsclass/genome-annotation:latest
docker push omicsclass/genome-annotation:v1.0
