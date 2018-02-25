# Dash Demo

# Getting Started

To use binder just click the link below. The first opens the tutorial notebook and the second takes you straight to jupyterlab for more experimentation

A repository for getting started with Dash using Jupyter and Binder

- Try jupyterlab [![Binder](https://beta.mybinder.org/badge.svg)](https://mybinder.org/v2/gh/4QuantOSS/DashIntro/master)

# Examples

- Tutorial
  - [![Binder](https://beta.mybinder.org/badge.svg)](https://mybinder.org/v2/gh/4QuantOSS/DashIntro/master?filepath=notebooks%2FTutorial.ipynb)
  - [AppMode](https://mybinder.org/v2/gh/4QuantOSS/DashIntro/master?urlpath=%2Fapps%2Fnotebooks%2FTutorial.ipynb)

- Table View (https://github.com/plotly/dash-table-experiments)
  - [![Binder](https://beta.mybinder.org/badge.svg)](https://mybinder.org/v2/gh/4QuantOSS/DashIntro/master?filepath=notebooks%2FTableExample.ipynb)
  - [AppMode](https://mybinder.org/v2/gh/4QuantOSS/DashIntro/master?urlpath=%2Fapps%2Fnotebooks%2FTableExample.ipynb)

- Colorscales (https://github.com/plotly/dash-colorscales)
  - [![Binder](https://beta.mybinder.org/badge.svg)](https://mybinder.org/v2/gh/4QuantOSS/DashIntro/master?filepath=notebooks%2FColorscales.ipynb)
  - [AppMode](https://mybinder.org/v2/gh/4QuantOSS/DashIntro/master?urlpath=%2Fapps%2Fnotebooks%2FColorscales.ipynb)

- Raw HTML Support, dangerous (https://github.com/plotly/dash-dangerously-set-inner-html)
  - [![Binder](https://beta.mybinder.org/badge.svg)](https://mybinder.org/v2/gh/4QuantOSS/DashIntro/master?filepath=notebooks%2FRawHTML.ipynb)
  - [AppMode](https://mybinder.org/v2/gh/4QuantOSS/DashIntro/master?urlpath=%2Fapps%2Fnotebooks%2FRawHTML.ipynb)

- VisDCC (https://github.com/jimmybow/visdcc)
  - WIP since the bundle.js isn't hosted on a CDN yet
  
- mydcc (https://github.com/jimmybow/mydcc)
  - WIP since the bundle.js isn't hosted on a CDN yet


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
