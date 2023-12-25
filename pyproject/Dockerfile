FROM nvidia/cuda:12.1.0-base-ubuntu22.04

ARG work_dir="/src/"

# コンテナにアクセスした際のデフォルトディレクトリ
WORKDIR ${work_dir}

RUN apt-get update
RUN apt-get install -y python3-pip curl

# poetryのインストール先の指定
ENV POETRY_HOME=/opt/poetry

RUN curl -sSL https://install.python-poetry.org | python3 - && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry
CMD ["/bin/bash"]