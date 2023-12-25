FROM nvidia/cuda:12.1.0-base-ubuntu22.04

RUN apt-get update
RUN apt-get install -y python3-pip curl locales git && \
        localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9

RUN pip install \
        numpy pandas matplotlib seaborn cupy-cuda12X scipy

RUN apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /usr/local/src/*
