# Dash Demo

# Getting Started 

To use binder just click the link below. The first opens the tutorial notebook and the second takes you straight to jupyterlab for more experimentation 

A repository for getting started with Dash using Jupyter and Binder

- Try tutorial: [![Binder](https://beta.mybinder.org/badge.svg)](https://mybinder.org/v2/gh/4QuantOSS/DashIntro/master?filepath=notebooks%2FTutorial.ipynb)

- Try jupyterlab [![Binder](https://beta.mybinder.org/badge.svg)](https://mybinder.org/v2/gh/4QuantOSS/DashIntro/master?urlpath=lab)




# Docker (new)

You can use the jupyter-repo2docker tool to make a Dockerfile from the repository
```
jupyter-repo2docker https://github.com/4QuantOSS/DashIntro/
```


## Docker (out-dated)
All of the older docker files are in the Docker subdirectory

### Build

To make the image yourself you can use the 
```
docker build . -t dashdemo
```

### Pull (preferred)

```
docker pull 4quant/dashdemo
```


### Run

```
docker run --rm -p 8888:8888 -p 9999:9999 -t dashdemo
```

### Run (with editable notebooks)

```
docker run --rm -p 8888:8888 -p 9999:9999 -v $(pwd)/notebooks:/home/dash_demo/notebooks -t dashdemo
```
