FROM continuumio/miniconda3

# Install system packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    net-tools \
    telnetd \
  && rm -rf /var/lib/apt/lists/*

# Setup path and environment
ADD ./src/ /home/src/
ADD ./requirements.txt /tmp/requirements.txt
RUN ["/bin/bash", "-c", "pip install -r /tmp/requirements.txt"]
RUN ["/bin/bash", "-c", "conda install jupyter -y --quiet && mkdir /opt/notebooks"]
ADD ./notebook/xlsx-converter.ipynb /opt/notebooks/

CMD jupyter notebook --port=8888 --notebook-dir=/opt/notebooks --NotebookApp.password='' --NotebookApp.token='' --no-browser --ip=0.0.0.0 --allow-root