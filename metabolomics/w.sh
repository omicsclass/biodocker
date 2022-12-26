#rm -rf R-v4.0.3
#rm -rf Python-v3.8.12
#rm -rf 
#cp -r /share/work/biosoft/R/R-v4.2.0/ R/
#cp -r /share/work/biosoft/python/Python-v3.8.12 .
docker build -t omicsclass/metabolomics:latest .
docker tag omicsclass/metabolomics:latest omicsclass/metabolomics:v1.0
docker push omicsclass/metabolomics:latest
docker push omicsclass/metabolomics:v1.0
