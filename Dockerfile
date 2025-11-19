FROM nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04

# パッケージの追加
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y sudo && \
    apt-get install -y vim nano emacs less wget curl git htop make swig && \
    apt-get install -y --reinstall build-essential && \
    apt-get install -y python3 python3-pip && \
    apt-get install -y python3-venv
    
RUN apt-get install -y graphviz && \
    apt-get install -y graphviz-dev  && \
    apt-get install -y python3-graphviz

# JupyterLab関連のパッケージ（いくつかの拡張機能を含む）
RUN python3 -m pip install --upgrade pip &&\
    pip install  --no-cache-dir\ 
    black \
    jupyterlab==3.6.7 \
    jupyterlab_code_formatter \
    jupyterlab-git \
    lckr-jupyterlab-variableinspector \
    jupyterlab_widgets \
    ipywidgets \
    import-ipynb \
    numpy \
    pandas \
    pandas_profiling \ 
    scipy \
    scikit-learn \
    matplotlib \
    japanize_matplotlib \
    cython \
    tensorflow \
    tqdm \
    mlxtend \
    lightgbm \
    pydeps \
    graphviz \
    shap \
    umap \
    xgboost \
    seaborn \
    plotly \
    requests \
    beautifulsoup4 \
    selenium \ 
    torch \
    networkx \
    pygraphviz  \
    graphviz \
    lightly \
    osmnx \
    folium \
    tslearn \
    dgl -f https://data.dgl.ai/wheels/torch-2.9/cu124/repo.html \
    karateclub \
    torch_geometric