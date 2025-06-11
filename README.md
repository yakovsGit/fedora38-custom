# Fedora 38 custom Docker Image

Create docker image for development 
The docker image is based on fedora:38 docker image  

## with docker build (in git bash)
~~~
docker build --progress plain -t yakov335/fedora38-custom:v1.1.0 . 2>&1 |  tee res.txt  
docker push yakov335/fedora38-custom:v1.1.0
~~~
