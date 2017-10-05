FROM ubuntu:16.04

MAINTAINER 4Quant

# Pick up some TF dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        git \
        libfreetype6-dev \
        libpng12-dev \
        libzmq3-dev \
        pkg-config \
        python \
        python-dev \
        python3-pip \
        python3-tk \
        rsync \
        software-properties-common \
        unzip \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py && \
    rm get-pip.py


RUN useradd -ms /bin/bash dash_demo
USER dash_demo
WORKDIR /home/dash_demo

RUN pip3 --no-cache-dir install --user \
        Pillow \
        h5py \
        ipykernel \
        jupyter \
        matplotlib \
        numpy \
        pandas \
        dash==0.18.3 \
		dash-renderer==0.10.0 \ 
		dash-html-components==0.7.0 \ 
		dash-core-components==0.12.6 \
		plotly==2.0.11 

RUN python3 -m ipykernel install --user

USER dash_demo

# Hooray, unicode
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Set up our notebook config.
COPY jupyter_notebook_config.py /home/dash_demo/.jupyter/

# Jupyter has issues with being run directly:
#   https://github.com/ipython/ipython/issues/7062
# We just add a little wrapper script.
COPY run_jupyter.sh .

# IPython
EXPOSE 8888

USER dash_demo
WORKDIR /home/dash_demo
ENV PATH="/home/dash_demo/.local/bin:${PATH}"

# setup the basic directories
# this will be overwritten with a mount point later
RUN mkdir data


CMD ["./run_jupyter.sh", "--allow-root"]
