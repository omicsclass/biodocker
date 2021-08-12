rm -rf R-v4.0.3
cp -r /share/work/biosoft/R/R-v4.0.3/ .
docker build -t omicsclass/r-server:latest .
docker push omicsclass/r-server:latest

