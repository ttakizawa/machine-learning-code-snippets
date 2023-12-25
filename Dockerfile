FROM nvidia/cuda:12.1.0-base-ubuntu22.04

RUN apt-get update
RUN apt-get install -y python3-pip curl locales git && \
        localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9

# # poetryのインストール先の指定
ENV POETRY_HOME=/opt/poetry

RUN curl -sSL https://install.python-poetry.org | python3 - && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false

COPY ./pyproject/pyproject.toml ./pyproject.toml
COPY ./pyproject/poetry.lock ./poetry.lock
RUN poetry install --no-dev

RUN apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /usr/local/src/*

WORKDIR /home/Jupyterlab/notebook