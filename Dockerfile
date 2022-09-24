FROM jupyter/tensorflow-notebook
USER root
RUN apt-get update && apt-get install -y vim
RUN conda update --all && conda install lightgbm  && \
conda install -c bioconda piper && conda install -c conda-forge xgboost plotly gym pandas-datareader pdfminer.six && \
conda install -c anaconda pandas-datareader
# conda install -c conda-forge wordcloud nltk plotly xgboost mecab copulae arch-py fastparquet
