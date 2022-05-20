#rm -rf R-v4.0.3
#rm -rf Python-v3.8.12
#cp -r /share/work/biosoft/R/R-v4.0.3/ .
#cp -r /share/work/biosoft/python/Python-v3.8.12 .
docker build -t omicsclass/single-cell:latest .
docker tag omicsclass/single-cell:latest omicsclass/single-cell:v2.0
docker push omicsclass/single-cell:latest
docker push omicsclass/single-cell:v2.0
