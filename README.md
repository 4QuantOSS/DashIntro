# Dash Demo

A repository for getting started with Dash using Jupyter and Docker

- Try using [![Binder](https://beta.mybinder.org/badge.svg)](https://beta.mybinder.org/v2/gh/4Quant/DashIntro/master)

# Getting Started 

## Build

To make the image yourself you can use the 
```
docker build . -t dashdemo
```

## Pull (preferred)

```
docker pull 4quant/dashdemo
```


## Run

```
docker run --rm -p 8888:8888 -p 9999:9999 -t dashdemo
```

## Run (with editable notebooks)

```
docker run --rm -p 8888:8888 -p 9999:9999 -v $(pwd)/notebooks:/home/dash_demo/notebooks -t dashdemo
```
