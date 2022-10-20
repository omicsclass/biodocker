#rm -rf R-v4.0.3
#rm -rf Python-v3.8.12
#rm -rf 
#cp -r /share/work/biosoft/R/R-v4.0.3/ .
#cp -r /share/work/biosoft/python/Python-v3.8.12 .
docker build -t omicsclass/genome-assembly:latest .
docker tag omicsclass/genome-assembly:latest omicsclass/genome-assembly:v1.0
docker push omicsclass/genome-assembly:latest
docker push omicsclass/genome-assembly:v1.0
