# metric
Simple metric script to get memory and CPU metric.

##Usage
CPU metric
```
$ python metric cpu
```
Memory metric
```
$ python metric mem
```

##Environment
Python 2.7
Script use psutil python library. Install psutil
```
pip install psutil
```
How to install [pip](https://pip.pypa.io/en/stable/installing/)

## Docerfile
Buil and run docker container to get basic CPU and memory metric
Base Docker Image
  ubuntu:latest
Additional packages
   ⋅⋅* make
   ⋅⋅* python2.7
   ⋅⋅* python-pip
   ⋅⋅* psutil python library
Copy metric script into docker image

## Build docker image
```
docker build -t metric/yampolskyi .
```

## Run container
```
docker run --name metric -d -i metric/yampolskyi:latest
```

## Get basic CPU metric
```
docker exec metric /metric cpu
```

## Get basic memory metric
```
docker exec metric /metric mem
```
